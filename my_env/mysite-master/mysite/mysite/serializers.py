from rest_framework import serializers
from myproj.models import Place,Search_list, BuildingInfo, Comments, LectureInfo, Report

class Lecture_Serializer(serializers.ModelSerializer):

    class Meta:
        model = LectureInfo
        fields = ['building_name', 'loc_num', 'mon', 'mon_time', 'tue', 'tue_time', 'wed', 'wed_time', 'thr', 'thr_time', 'fri', 'fri_time', 'sat', 'sat_time']

class Place_Serializer(serializers.ModelSerializer): #장소 기본정보에 사용
    floorlist = serializers.SerializerMethodField()
    # lecture = serializers.SerializerMethodField()
    class Meta:
        model = Place
        fields = ['id', 'location', 'building_name', 'floor', 'category', 'explain', 'wiki','image', 'coords', 'floorlist', 'lecture']

    def get_floorlist(self, obj): #장소 기본정보 페이지에서 다른 층으로 이동하기 위한 드롭다운 층수들
        floors = list(Place.objects.filter(building_name=obj.building_name).distinct().values_list('floor', flat=True).order_by('floor'))
        floors = sorted(floors, key=lambda x: int(x))

        return floors

    # def get_lecture(self, obj): #강의정보가 있는 경우, 강의정보를 프론트가 받기 좋게 split하고 get메소드 요청 시 같이 넘겨줌
    #     try:
    #         lecture = LectureInfo.objects.get(place=obj.id)
    #         serializers = Lecture_Serializer(lecture)
    #         data = serializers.data
    #
    #         if data:
    #             data['mon'] = data['mon'].split('\r\n')
    #             data['tue'] = data['tue'].split('\r\n')
    #             data['wed'] = data['wed'].split('\r\n')
    #             data['thr'] = data['thr'].split('\r\n')
    #             data['fri'] = data['fri'].split('\r\n')
    #             data['sat'] = data['sat'].split('\r\n')
    #             data['mon_time'] = data['mon_time'].split('\r\n')
    #             data['tue_time'] = data['tue_time'].split('\r\n')
    #             data['wed_time'] = data['wed_time'].split('\r\n')
    #             data['thr_time'] = data['thr_time'].split('\r\n')
    #             data['fri_time'] = data['fri_time'].split('\r\n')
    #             data['sat_time'] = data['sat_time'].split('\r\n')
    #
    #         return data
    #     except:
    #         return




class Place_Wiki_Serializer(serializers.ModelSerializer):
    lecture = serializers.SerializerMethodField()

    class Meta:
        model = Place
        fields = ['building_name', 'loc_num', 'location', 'explain', 'wiki', 'lecture']

    def update(self, instance, validated_data):
        # Exclude fields from the validated data to prevent their update
        validated_data.pop('building_name', None)
        validated_data.pop('loc_num', None)
        validated_data.pop('location', None)
        validated_data.pop('explain', None)

        return super().update(instance, validated_data)

    def get_lecture(self, obj):
        try:  # 강의정보가 있는 강의실이라면
            lecture = LectureInfo.objects.get(place=obj.id)
            serializers = Lecture_Serializer(lecture)
            data = serializers.data

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

            return data
        except:  # 강의정보가 없으면 null
            return
class SearchList_Serializer(serializers.ModelSerializer): #장소리스트에 검색결과 리스트 표시시 표시될 항목
    lecture = serializers.SerializerMethodField() #장소 위키 페이지에서 표현될 강의정보 데이터
    filterlist = serializers.SerializerMethodField() # 장소 리스트에서 검색결과 필터링 기준이 되는 건물명들
    floorlist = serializers.SerializerMethodField() # 장소 상세정보 페이지에서 다른 층으로 이동하기 위한 층수들이 포함된 드롭다운 항목들
    class Meta:
        model = Place
        fields = ['id', 'building_name', 'loc_num', 'location', 'floor', 'category', 'filterlist', 'image', 'coords', 'lecture', 'floorlist']

    def get_lecture(self, obj):
        try:         #강의정보가 있는 강의실이라면
            lecture = LectureInfo.objects.get(place=obj.id)
            serializers = Lecture_Serializer(lecture)
            data = serializers.data

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

            return data
        except: #강의정보가 없으면 null
            return

    def get_filterlist(self, obj):

        return
    def get_floorlist(self, obj): #장소 기본정보 페이지에서 다른 층으로 이동하기 위한 드롭다운 층수들
        floors = list(Place.objects.filter(building_name=obj.building_name).distinct().values_list('floor', flat=True).order_by('floor'))
        floors = sorted(floors, key=lambda x: int(x))

        return floors
class Buildinfo_Serializer(serializers.ModelSerializer):

    class Meta:
        model = BuildingInfo
        fields = ['id', 'building_name', 'floor_info', 'campus_info', 'users', 'built_date', 'wiki']



class Comment_Serializer(serializers.ModelSerializer):
    class Meta:
        model = Comments
        fields = ['id', 'building_name', 'tag', 'comment']


class Report_Serializer(serializers.ModelSerializer):
    class Meta:
        model = Report
        fields = ['id','report_title', 'report_contents']

        # content_id = models.ForeignKey(Place, on_delete=models.RESTRICT)
        # report_title = models.TextField()  # 신고항목
        # report_contents = models.TextField()  # 신고내용
        # report_time = models.DateTimeField(auto_now_add=True)
        # user_ip