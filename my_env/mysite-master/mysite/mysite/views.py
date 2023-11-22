import re
import json
from datetime import datetime

from django.db import connection
from django.core.cache import cache
from django.shortcuts import render

from rest_framework.views import APIView, status

from django.contrib import messages

from django.db import transaction
from rest_framework.response import Response

from myproj.models import Place, SavePlaceUpdate, BuildingInfo,LectureInfo, Comments, SaveBuildingUpdate, Report
from django.db.models import Q
from django.http import JsonResponse, HttpResponse
from .serializers import Place_Serializer, SearchList_Serializer,Buildinfo_Serializer, Place_Wiki_Serializer, Comment_Serializer, Lecture_Serializer, Report_Serializer


class SearchListDropdownView(APIView): #검색결과 리스팅


    def __init__(self, placeinfo):
        self.placeinfo = placeinfo
        self.filter_cta = placeinfo.distinct().values_list('building_name', flat=True)
    def filtered_res(self, cta): # 장소 리스트 상의 필터링 기능
        filter_cta = list(self.filter_cta)
        if cta in filter_cta:

            print("cta들어감:", cta, filter_cta)
            new_placeinfo = self.placeinfo.filter(Q(building_name=cta))
            print("new_placeinfo 타입:", type(new_placeinfo))

            return new_placeinfo
        else:
            return self.placeinfo
    def get_cta(self): # 장소 리스트 상에서의 필터링을 위한 드롭다운 항목들


        return self.filter_cta
    def get_serialize(self, placeinfo, request): #json으로 바꾸기 위한 serializer + 드롭다운에 들어갈 항목(filterlist) 추출
        serializer = SearchList_Serializer(placeinfo, many=True, context={'request': request})
        data = serializer.data
        # print("get_serailize",serializer.data)
        for i in data:
            i['filterlist'] = self.get_cta()

        return data


class CategorySearchView(APIView): # 카테고리 검색(빠른 검색)

    def get(self, request):
        searched = request.GET['fastsearch']
        # cta = request.GET['cta']

        placeinfo = Place.objects.all()
        placeinfo = placeinfo.filter(Q(category__icontains=searched) | Q(explain__icontains=searched) | Q(location__exact=searched))
        print("빠른검색 실시 fastsearch=", searched)
        # print("placeinfo:",placeinfo)
        # serializer = SearchList_Serializer(placeinfo, many=True, context={'request': request})
        filters = SearchListDropdownView(placeinfo)
        placeinfo = filters.filtered_res(cta='')
        data = filters.get_serialize(placeinfo, request)

        del filters
        # print(form)
        return Response(data, status=status.HTTP_200_OK)
        #return render(request, 'mysite/search_res.html', {'searched': searched, 'placeinfo': placeinfo})


class SearchView(APIView): # 키워드 및 조건 검색
   def get(self, request):
        pattern = r"[^\w\sㄱ-ㅎ가-힣]"

        # builds = ''
        # floor = ''
        # category = ''
        searched = request.GET['searched'] #검색창에 입력된 내용을 'searched(ex : 중앙도서관)'로 받음, keyword search, 숫자, 영어, 한글을 입력받음
        kwdcheck = bool(re.search(pattern, searched)) #True면 특수문자 포함된 것
        cta=''
        cta = request.GET['cta']  # cta = request.GET['builds'] #장소 리스트 상에서 필터링(정렬) 기준이 되는 건물명 받음
        try:
            builds = request.GET['builds'] #조건 검색에서 '건물명' 고름
        except:
            messages.warning(request, 'Error in buildings')


        try:
            floor = request.GET['floor']
        except:
            print("floor에 대한 에러")
        try:
            category = request.GET['category']
        except:
            print("category에 대한 에러")
        #
        # print("조건검색에서 고른 건물명:", builds)
        # print("조건검색에서 고른 층수:", floor)
        # print("조건검색에서 고른 분류:", category)
        places = {"builds": builds, "floor": floor, "category": category}
        #if builds, floor가 none -> category에는 값이 있어선 안됨
        #if builds가 none -> floor, category 모두 값이 있어선 안됨
        #if floor가 none -> category에는 값이 있어선 안됨
        pn = [0,1][(builds + floor + category) == '']
        condsearch =''
        if pn==0 :
            #조건이 있을 때 0
            condsearch=True
        elif pn==1:
            #조건이 없을 때 1
            condsearch=False


        """
        if not places or not places.get("builds"):
                # code for when builds is None or empty
        elif not places.get("floor"):
                # code for when floor is None or empty
        elif not places.get("category"):
            # code for when category is None or empty
        else:
                # code for when all values are present and not empty
        
        
        
        """

        print((pn))
        if kwdcheck == True or len(searched) >= 20 or searched.isspace():
            #공백만 입력된 경우, 입력문자열 길이가 20이상인 경우, 특수문자가 포함된 경우
            print("검색어가  올바르지 않은 입력")
            return Response({'에러'})
            #return render(request, 'mysite/search_res.html', {'searched': '', 'placeinfo': ''})

        if not condsearch and searched:
            print("조건없이 키워드 검색만 사용")
            keywords = searched.split(' ')
            placeinfo = Place.objects.all()


            for wd in keywords:
            # 조건 검색없이 키워드 검색만 할 때 -> (pn=1이고 searched에 입력이 있을 때)
                placeinfo = placeinfo.filter(Q(building_name__icontains=wd) | Q(location__icontains=wd) | Q(loc_num__icontains=wd) | Q(explain__icontains=wd)  | Q(wiki__icontains=wd) | Q(category__icontains=wd) | Q(floor__icontains=wd))  # 검색한 내용이 DB오브젝트에 있으면 placeinfo변수에 저장
                # lecinfo = lecinfo.filter(Q(mon__icontains=wd) | Q(tue__icontains=wd) | Q(wed__icontains=wd) | Q(thr__icontains=wd) | Q(fri__icontains=wd) | Q(sat__icontains=wd))


            filters = SearchListDropdownView(placeinfo)
            placeinfo= filters.filtered_res(cta)
            data = filters.get_serialize(placeinfo, request)

            del filters

            return Response(data, status=status.HTTP_200_OK)
            #return render(request, 'mysite/search_res.html', {'searched': searched, 'placeinfo': placeinfo})

        elif condsearch and searched:
            # 조건검색 + 키워드 검색
            if not places['floor'] and not places['category']:
                # print("건물명 조건만 주어짐")
                placeinfo = Place.objects.filter(Q(building_name__icontains=places['builds']))
            else:

                placeinfo = Place.objects.filter(
                    Q(building_name__icontains=places['builds']) & Q(floor__exact=places['floor']) & Q(
                        category__icontains=places['category']))

            keywords = searched.split(' ')
            for wd in keywords:
                placeinfo = placeinfo.filter(Q(location__icontains=wd) | Q(loc_num__icontains=wd) | Q(explain__icontains=wd) | Q(building_name__icontains=wd) | Q(wiki__icontains=wd) | Q(category__icontains=wd) | Q(floor__icontains=wd))


            filters = SearchListDropdownView(placeinfo)
            placeinfo = filters.filtered_res(cta)
            data = filters.get_serialize(placeinfo, request)


            del filters

            return Response(data, status=status.HTTP_200_OK)
            #return render(request, 'mysite/search_res.html', {'searched': searched, 'placeinfo': placeinfo})


        elif condsearch and (not searched):
            # 조건검색만 할 때
            if not places['floor'] and not places['category']:
                # print("건물명 조건만 주어짐")
                placeinfo = Place.objects.filter(Q(building_name__icontains=places['builds']))
            else:
                # a = not places['category']
                # print("a",a)
                placeinfo = Place.objects.filter(Q(building_name__icontains=places['builds']) & Q(floor__exact=places['floor']) & Q(category__icontains=places['category']))

            print("조건검색만 할 때 placenfo:", placeinfo)
            filters = SearchListDropdownView(placeinfo)
            placeinfo = filters.filtered_res(cta)
            data = filters.get_serialize(placeinfo, request)
            # print("조건검색만 할 때 serialize.data",placeinfo, data)
            return Response(data, status=status.HTTP_200_OK)
            #return render(request, 'mysite/search_res.html', {'searched': searched, 'placeinfo': placeinfo})

        else:

            print("어느 경우도 아님")
            return Response({'에러'})
            #return render(request, 'mysite/search_res.html', {'searched': searched, 'placeinfo': ''})

class ImageClickView(APIView) : # 2d 도면상에서 특정 영역이 클릭되었을 때, 그 장소의 정보 리턴
    def get(self, request):
        place_id = request.GET['id']
        place_detail = Place.objects.get(id=place_id)
        print("imageclick",place_detail)
        # form = DetailForm(instance=place_detail)
        serializer = SearchList_Serializer(place_detail) # floorlist 변수에 층수들 포함
        data = serializer.data



        return Response(data, status=status.HTTP_200_OK)



class BuildingUpdateView(APIView): #건물 위키, 정보
    def get(self, request, build_id):
        wiki_b = BuildingInfo.objects.get(id=build_id)
        serializer = Buildinfo_Serializer(wiki_b)
        #form = WikiBuildingForm(instance=wiki_b)
        # print(form)
        #return render(request, 'mysite/wiki_building.html', {'wiki_b': wiki_b, 'form': form})
        return Response(serializer.data, status=status.HTTP_200_OK)

    def put(self, request, build_id):  # 위키 수정하기
        building = BuildingInfo.objects.get(id=build_id)
        print("건물 위키 수정:", request.data)
        serializer = Buildinfo_Serializer(building, data=request.data)
        ip_address = request.META.get('REMOTE_ADDR')  # 프록시를 통한 IP는 잡지 못함
        builds_detail = {}

        if serializer.is_valid():
            for field in serializer.validated_data:
                if field in ['campus_info', 'floor_info', 'built_date', 'users']:
                    builds_detail[field] = serializer.validated_data[field]
            print("builds_detail", builds_detail)
            serializer.save(updated_ip=ip_address)

            # 수정 내용, 수정자 IP 저장
            updated_record = SaveBuildingUpdate(
                building=building,
                updated_ip=ip_address,
                modify_cont=builds_detail
            )
            updated_record.save()

        # print('위키 수정프로세스')

            # return redirect('/build/' + str(build_id) + '/wiki/')  # 원래 페이지로 돌아가기
        # return render(request, 'mysite/build_edit.html', {'form': form, 'build_id': build_id})
        return Response(serializer.data, status=status.HTTP_201_CREATED)
class PlaceDetail(APIView): # 장소 기본정보 페이지

    def get(self, request, place_id):
        place_detail = Place.objects.get(id=place_id)
        # form = DetailForm(instance=place_detail)
        #강의정보가 있는 강의실이라면


        serializer = Place_Serializer(place_detail) # floorlist 변수에 층수들 포함
        data = serializer.data



        # print(data['lecture']['mon'])
        #return Response(data, status=status.HTTP_200_OK)
        return render(request, 'mysite/detail.html', {'place_detail': place_detail})
class CommentView(APIView):

    def get(self, request, comment_id=None):
        comments = Comments.objects.all().order_by('-updated_at')
        # places=Place.objects.get(id=place_id)
        # comments = Comments.objects.filters(place=places) # 특정 selecteditem(장소정보 페이지)의 id를 이용, 특정 장소 페이지에서 작성된 댓글만 추출
        # print(comments)
        serializer = Comment_Serializer(comments, many=True)
        return Response(serializer.data, status=status.HTTP_200_OK)

    def post(self, request):
        serializer = Comment_Serializer(data=request.data)
        ip_address = request.META.get('REMOTE_ADDR')  # 프록시를 통한 IP는 잡지 못함
        print("댓글 작성", request.data)
        if serializer.is_valid():
            print("comment_serializer is valid")
            serializer.save(updated_ip=ip_address)

        return Response(serializer.data, status=status.HTTP_201_CREATED)

    def put(self, request, comment_id):
        comments = Comments.objects.get(id=comment_id)
        serializer = Comment_Serializer(comments, data=request.data)
        ip_address = request.META.get('REMOTE_ADDR')  # 프록시를 통한 IP는 잡지 못함
        # print(form)

        if serializer.is_valid():
            serializer.save(updated_ip=ip_address)
            # 수정 내용, 수정자 IP 저장
        return Response(serializer.data, status=status.HTTP_201_CREATED)

    def delete(self, request, comment_id):
        comments = Comments.objects.get(id=comment_id)
        comments.delete()
        return Response(status=204)



class Place_Imageinfo(APIView):  # 이미지 매핑용 coords, shape 값 모델에 추가하기:
        def __init__(self):
            return
        def update_coords(self, data):
            # json_data = [
            #
            #        {
            #            'id': 214,
            #            "name": 'Paldalgwan 107',
            #            'target': "",
            #            'href': "",
            #            'coords': "106,1860,713,2295",
            #            'shape': "rect"
            #        },
            #        {
            #            'id': 216,
            #            "name": 'Paldalgwan 108',
            #            'target': "",
            #            'href': "",
            #            'coords': "730,1857,1352,2298",
            #            'shape': "rect"
            #        },
            #        {
            #            'id': 217,
            #            "name": 'Paldalgwan 110',
            #            'target': "",
            #            'href': "",
            #            'coords': "1813,1854,2382,2292",
            #            'shape': "rect"
            #        },
            #        {
            #            'id': 218,
            #            "name": 'Paldalgwan 111',
            #            'target': "",
            #            'href': "",
            #            'coords': "2406,1851,3063,2292",
            #            'shape': "rect"
            #        },
            #        {
            #            'id': 215,
            #            "name": 'Paldalgwan 114',
            #            'target': "",
            #            'href': "",
            #            'coords': "2468,1566,2626,1711",
            #            'shape': "rect"
            #        },
            #        {
            #            'id': 220,
            #            "name": 'Paldalgwan 117',
            #            'target': "",
            #            'href': "",
            #            'coords': "1804,1055,2120,1195",
            #            'shape': "rect"
            #        },
            #        {
            #            'id': 221,
            #            "name": 'Paldalgwan 117-1',
            #            'target': "",
            #            'href': "",
            #            'coords': "1807,1216,2114,1356",
            #            'shape': "rect"
            #        },
            #
            # {
            # 'id': 222,
            # "name": 'Paldalgwan 122',
            # 'target': "",
            # 'href': "",
            # 'coords': "1715,615,2191,915",
            # 'shape': "rect"
            # },
            # {
            # 'id': 223,
            # "name": 'Paldalgwan 125',
            # 'target': "",
            # 'href': "",
            # 'coords': "1221,615,1364,743",
            # 'shape': "rect"
            # },
            # {
            # 'id': 224,
            # "name": 'Paldalgwan 127',
            # 'target': "",
            # 'href': "",
            # 'coords': "1055,615,1201,918",
            # 'shape': "rect"
            # },
            # {
            # 'id': 225,
            # "name": 'Paldalgwan 128',
            # 'target': "",
            # 'href': "",
            # 'coords': "757,615,1043,918",
            # 'shape': "rect"
            # },
            # {
            # 'id': 226,
            # "name": 'Paldalgwan 129',
            # 'target': "",
            # 'href': "",
            # 'coords': "412,618,733,918",
            # 'shape': "rect"
            # },
            # {
            # 'id': 227,
            # "name": 'Paldalgwan 130',
            # 'target': "",
            # 'href': "",
            # 'coords': "228,615,391,921",
            # 'shape': "rect"
            # },
            # {
            # 'id': 228,
            # "name": 'Paldalgwan 133',
            # 'target': "",
            # 'href': "",
            # 'coords': "109,1061,400,1549",
            # 'shape': "rect"
            # },
            # {
            # 'id': 229,
            # "name": 'Paldalgwan 134',
            # 'target': "",
            # 'href': "",
            # 'coords': "421,1064,739,1064,736,1555,591,1561,591,1362,421,1353",
            # 'shape': "poly"
            # },
            # {
            # 'id': 230,
            # "name": 'Paldalgwan 134-1',
            # 'target': "",
            # 'href': "",
            # 'coords': "424,1379,564,1549",
            # 'shape': "rect"
            # },
            # {
            # 'id': 231,
            # "name": 'Paldalgwan 137',
            # 'target': "",
            # 'href': "",
            # 'coords': "757,1064,1043,1552",
            # 'shape': "rect"
            # },
            # {
            # 'id': 232,
            # "name": 'Paldalgwan 138',
            # 'target': "",
            # 'href': "",
            # 'coords': "1064,1058,1364,1204",
            # 'shape': "rect"
            # },
            # {
            # 'id': 233,
            # "name": 'Paldalgwan 138-1',
            # 'target': "",
            # 'href': "",
            # 'coords': "1061,1219,1364,1356",
            # 'shape': "rect"
            # },
            # {
            # 'id': 234,
            # "name": 'Paldalgwan 1층 남자화장실',
            # 'target': "",
            # 'href': "",
            # 'coords': "106,1573,641,1716",
            # 'shape': "rect"
            # },
            # {
            # 'id': 235,
            # "name": 'Paldalgwan 1층 여자화장실',
            # 'target': "",
            # 'href': "",
            # 'coords': "2646,1567,3063,1710",
            # 'shape': "rect"
            # },
            # {
            # 'id': 219,
            # "name": 'Paldalgwan 116',
            # 'target': "",
            # 'href': "",
            # 'coords': "2135,1061,3063,1549",
            # 'shape': "rect"
            # },
            # ]




            with connection.cursor() as cursor:
                for item in data:
                    id = item['id']
                    coords = item['coords']
                    cursor.execute(
                        "UPDATE myproj_place SET coords = %s WHERE id = %s",
                        [coords, id]
                    )

            return HttpResponse("Coords updated successfully!")
        def update_shape(self, data):
            # json_data = [
            #
            #        {
            #            'id': 214,
            #            "name": 'Paldalgwan 107',
            #            'target': "",
            #            'href': "",
            #            'coords': "106,1860,713,2295",
            #            'shape': "rect"
            #        },
            #        {
            #            'id': 216,
            #            "name": 'Paldalgwan 108',
            #            'target': "",
            #            'href': "",
            #            'coords': "730,1857,1352,2298",
            #            'shape': "rect"
            #        },
            #        {
            #            'id': 217,
            #            "name": 'Paldalgwan 110',
            #            'target': "",
            #            'href': "",
            #            'coords': "1813,1854,2382,2292",
            #            'shape': "rect"
            #        },
            #        {
            #            'id': 218,
            #            "name": 'Paldalgwan 111',
            #            'target': "",
            #            'href': "",
            #            'coords': "2406,1851,3063,2292",
            #            'shape': "rect"
            #        },
            #        {
            #            'id': 215,
            #            "name": 'Paldalgwan 114',
            #            'target': "",
            #            'href': "",
            #            'coords': "2468,1566,2626,1711",
            #            'shape': "rect"
            #        },
            #        {
            #            'id': 220,
            #            "name": 'Paldalgwan 117',
            #            'target': "",
            #            'href': "",
            #            'coords': "1804,1055,2120,1195",
            #            'shape': "rect"
            #        },
            #        {
            #            'id': 221,
            #            "name": 'Paldalgwan 117-1',
            #            'target': "",
            #            'href': "",
            #            'coords': "1807,1216,2114,1356",
            #            'shape': "rect"
            #        },
            #
            # {
            # 'id': 222,
            # "name": 'Paldalgwan 122',
            # 'target': "",
            # 'href': "",
            # 'coords': "1715,615,2191,915",
            # 'shape': "rect"
            # },
            # {
            # 'id': 223,
            # "name": 'Paldalgwan 125',
            # 'target': "",
            # 'href': "",
            # 'coords': "1221,615,1364,743",
            # 'shape': "rect"
            # },
            # {
            # 'id': 224,
            # "name": 'Paldalgwan 127',
            # 'target': "",
            # 'href': "",
            # 'coords': "1055,615,1201,918",
            # 'shape': "rect"
            # },
            # {
            # 'id': 225,
            # "name": 'Paldalgwan 128',
            # 'target': "",
            # 'href': "",
            # 'coords': "757,615,1043,918",
            # 'shape': "rect"
            # },
            # {
            # 'id': 226,
            # "name": 'Paldalgwan 129',
            # 'target': "",
            # 'href': "",
            # 'coords': "412,618,733,918",
            # 'shape': "rect"
            # },
            # {
            # 'id': 227,
            # "name": 'Paldalgwan 130',
            # 'target': "",
            # 'href': "",
            # 'coords': "228,615,391,921",
            # 'shape': "rect"
            # },
            # {
            # 'id': 228,
            # "name": 'Paldalgwan 133',
            # 'target': "",
            # 'href': "",
            # 'coords': "109,1061,400,1549",
            # 'shape': "rect"
            # },
            # {
            # 'id': 229,
            # "name": 'Paldalgwan 134',
            # 'target': "",
            # 'href': "",
            # 'coords': "421,1064,739,1064,736,1555,591,1561,591,1362,421,1353",
            # 'shape': "poly"
            # },
            # {
            # 'id': 230,
            # "name": 'Paldalgwan 134-1',
            # 'target': "",
            # 'href': "",
            # 'coords': "424,1379,564,1549",
            # 'shape': "rect"
            # },
            # {
            # 'id': 231,
            # "name": 'Paldalgwan 137',
            # 'target': "",
            # 'href': "",
            # 'coords': "757,1064,1043,1552",
            # 'shape': "rect"
            # },
            # {
            # 'id': 232,
            # "name": 'Paldalgwan 138',
            # 'target': "",
            # 'href': "",
            # 'coords': "1064,1058,1364,1204",
            # 'shape': "rect"
            # },
            # {
            # 'id': 233,
            # "name": 'Paldalgwan 138-1',
            # 'target': "",
            # 'href': "",
            # 'coords': "1061,1219,1364,1356",
            # 'shape': "rect"
            # },
            # {
            # 'id': 234,
            # "name": 'Paldalgwan 1층 남자화장실',
            # 'target': "",
            # 'href': "",
            # 'coords': "106,1573,641,1716",
            # 'shape': "rect"
            # },
            # {
            # 'id': 235,
            # "name": 'Paldalgwan 1층 여자화장실',
            # 'target': "",
            # 'href': "",
            # 'coords': "2646,1567,3063,1710",
            # 'shape': "rect"
            # },
            # {
            # 'id': 219,
            # "name": 'Paldalgwan 116',
            # 'target': "",
            # 'href': "",
            # 'coords': "2135,1061,3063,1549",
            # 'shape': "rect"
            # },
            # ]




            with connection.cursor() as cursor:
                for item in data:
                    id = item['id']
                    shape = item['shape']
                    cursor.execute(
                        "UPDATE myproj_place SET shape = %s WHERE id = %s",
                        [shape, id]
                    )

            return HttpResponse("Shape updated successfully!")


class PlaceUpdateView(APIView):
    def get(self, request, place_id): #장소 위키 보기
        place = Place.objects.get(id=place_id)

        serializer = Place_Wiki_Serializer(place)
        #form = PlaceForm(instance=place)
        #return render(request, 'mysite/place_edit.html', {'form': form, 'place_id': place_id})

        return Response(serializer.data, status=status.HTTP_200_OK)

    def put(self, request, place_id):  # 장소 위키 수정하기

                place = Place.objects.get(id=place_id)
                # form = PlaceForm(instance=place)
                print("try select for update")
                # serializer = Place_Wiki_Serializer(place, data=request.data, partial=True, exclude=['building_name','loc_num', 'location', 'explain'])
                serializer = Place_Wiki_Serializer(place, data=request.data)
                ip_address = request.META.get('REMOTE_ADDR')  # 프록시를 통한 IP는 잡지 못함
                now=datetime.now()
                if serializer.is_valid():
                    serializer.save(updated_at=now.date())
                    # 수정 내용, 수정자 IP 저장
                    updated_record = SavePlaceUpdate(
                        place=place,
                        updated_ip=ip_address,
                        modify_cont=place.wiki
                    )
                    updated_record.save()
                    # place.locked = False
                    # place.save()

                    # print('위키 수정프로세스')

                #return redirect('/detail/' + str(place_id))  # 원래 페이지로 돌아가기
                #return render(request, 'mysite/place_edit.html', {'form': form, 'place_id': place_id})
                return Response(serializer.data, status=status.HTTP_201_CREATED)






class ChainedDropdownView(APIView):  # 건물명->층수->분류 순의 종속적 드롭다운
    def get(self, request, *args, **kwargs):
        # print("get called")
        building_name = request.GET.get('building_name')
        floor = request.GET.get('floor')
        category = request.GET.get('category')
        # print("Building_name:", building_name)
        # print("Floor:", floor)
        # print("Category:", category)

        if not building_name:
            # if building_name is not None: 이라고 조건을 주면 building_name이 공백인 경우 조건에 만족하지 않아 그냥 패스해버리는 문제생김

            # 건물명 정하지 않았을 때
            buildings = Place.objects.distinct().values_list('building_name')  # 모델에 있는 건물명들 다 가져옴 -> 드롭다운에 옵션으로 표시될 건물명들
            # print("buildings", buildings)
            print('건물명 안골랐음')

            return JsonResponse({'buildings': list(buildings)})
        elif not floor:
            print("층수 안골랐음")

            # 건물명만 택한 뒤 이에 종속적으로 floor를 변경
            floors = Place.objects.filter(building_name=building_name).distinct().values_list('floor')
            print("floor:", floors)
            return JsonResponse({'floors': list(floors)})
        elif not category:
            # 건물명, 층수를 택했을 때 category 종속적으로 변경
            category = Place.objects.filter(Q(building_name=building_name) & Q(floor=floor)).distinct().values_list(
                'category')
            print(category)
            return JsonResponse({'category': list(category)})

        else:
            # 건물명, 층수, 장소분류 3가지 조건에 맞는 장소 목록 반환
            print("마지막 부분 실행중")
            places = Place.objects.filter(
                Q(building_name=building_name) & Q(floor=floor) & Q(category=category)
            ).values('id', 'building_name', 'location', 'explain')
            print(places)

            return JsonResponse({'places': list(places)})
            # return render(request, 'mysite/search_res.html', {'searched': searched, 'placeinfo': place_info})


"""

"""
class Lecture(APIView):
    def get(self, request, place_id):

        place_lecture = LectureInfo.objects.get(place=place_id)
        serializer = Lecture_Serializer(place_lecture)
        data = serializer.data

        if data:
            data['mon'] = data['mon'].split('\r\n')
            data['tue'] = data['tue'].split('\r\n')
            data['wed'] = data['wed'].split('\r\n')
            data['thr'] = data['thr'].split('\r\n')
            data['fri'] = data['fri'].split('\r\n')
            data['sat'] = data['sat'].split('\r\n')
            data['mon_time'] = data['mon_time'].split('\r\n')
            data['tue_time'] = data['tue_time'].split('\r\n')
            data['wed_time'] = data['wed_time'].split('\r\n')
            data['thr_time'] = data['thr_time'].split('\r\n')
            data['fri_time'] = data['fri_time'].split('\r\n')
            data['sat_time'] = data['sat_time'].split('\r\n')


        # form = LectureForm(instance=place_lecture)
        # return render(request, 'mysite/place_edit.html', {'form': form, 'place_id': place_id})
        return Response(data, status=status.HTTP_200_OK)

class ReportView(APIView):

    def post(self, request, place_id):
        #     {
        #     "report_title": "잘못된 내용",
        #     "report_contents": "장소 이름이 잘못되어 있습니다"
        #    }
        # place = Place.objects.get(id=place_id)
        # print(request.data)
        #
        print(request.data)
        serializer = Report_Serializer(data=request.data)
        ip_address = request.META.get('REMOTE_ADDR')
        # req_data = {
        #     "content_id": place.id,
        #     'report_title': report_title,
        #     'report_contents': report_content,
        #     'user_ip': ip_address
        #
        # }
        # print(request.data)
        now = datetime.now()
        report_title = request.data.get('report_title')

        report_content = request.data.get('report_contents')

          # 프록시를 통한 IP는 잡지 못함
        print("request.data:",request.data)
        if serializer.is_valid():
            serializer.save(user_ip=ip_address, report_time=now.date(), contentid=place_id)
            print(serializer.data)


        else:
            print("serializer not valid")

        return Response(serializer.data, status=status.HTTP_201_CREATED)
