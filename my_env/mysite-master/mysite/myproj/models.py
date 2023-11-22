from django.db import models

from datetime import timedelta
from django.utils import timezone
"""
  위치(장소이름)
  사진
  설명
  최근 수정일자
  강의정보
  
  
"""
class Place(models.Model):

  building_name = models.TextField(blank=True, null=True)
  loc_num = models.TextField(blank=True,null=True)
  location       = models.TextField(blank=True, null=True)
  image         = models.ImageField(upload_to = '2d_map', blank=True,null=True)
  explain = models.TextField(blank=True, null=True)
  wiki = models.TextField(blank=True, null=True)
  created_at = models.DateTimeField(auto_now_add=True) # 해당 레코드 생성시 현재 시간 자동저장
  updated_at = models.DateTimeField(auto_now=True) # 해당 레코드 갱신시 현재 시간 자동저장
  # lecture_info    = models.TextField(blank=True, null=True)
  floor = models.TextField(blank=True, null=True)
  category = models.TextField(blank=True, null=True)
  coords = models.TextField(blank=True, null=True)
  # shape = models.TextField(blank=True, null = True)
  # filterlist= models.TextField(blank=True, null=True)
class Search_list(models.Model): # 검색결과 리스트(장소 리스트)
  building_name = models.TextField(blank=True,null=True)
  location       = models.TextField(blank=True, null=True)
  loc_num = models.TextField(blank=True, null=True)
  category = models.TextField(blank=True, null=True)
  floor = models.TextField(blank=True, null=True)
  # filterlist= models.TextField(blank=True, null=True)
  image         = models.ImageField(upload_to = '2d_map', blank=True,null=True)
  coords = models.TextField(blank=True, null=True)


class LectureInfo(models.Model): # 강의정보
    place = models.ForeignKey(Place, on_delete=models.CASCADE)
    loc_num = models.TextField(blank=True, null=True)
    building_name = models.TextField(blank=True, null=True)
    mon = models.TextField(blank=True, null=True)
    mon_time = models.TextField(blank=True, null=True)
    tue = models.TextField(blank=True, null=True)
    tue_time = models.TextField(blank=True, null=True)
    wed = models.TextField(blank=True, null=True)
    wed_time = models.TextField(blank=True, null=True)
    thr = models.TextField(blank=True, null=True)
    thr_time = models.TextField(blank=True, null=True)
    fri = models.TextField(blank=True, null=True)
    fri_time = models.TextField(blank=True, null=True)
    sat = models.TextField(blank=True, null=True)
    sat_time = models.TextField(blank=True, null=True)
class SavePlaceUpdate(models.Model): # 장소 위키 수정시간 및 ip 기록
  place  = models.ForeignKey(Place, on_delete=models.CASCADE)
  updated_ip = models.CharField(max_length=45)
  modify_cont = models.TextField()
  updated_at = models.DateTimeField(auto_now=True) # 해당 레코드 갱신시 현재 시간 자동저장
  @classmethod
  def delete_expired_records(cls): #수정 기록데이터가 마지막으로 수정된 지 특정 기간(40일) 지나면 삭제
      expiration_date = timezone.now() - timedelta(days=40)
      cls.objects.filter(updated_at__lt=expiration_date).delete()



class BuildingInfo(models.Model): #건물 정보
    building_name = models.TextField(blank=True, null=True)
    floor_info = models.TextField(blank=True, null=True)
    campus_info = models.TextField(blank=True, null=True)
    users = models.TextField(blank=True, null=True)
    built_date = models.TextField(blank=True, null=True)
    wiki = models.TextField(blank=True, null=True)

class SaveBuildingUpdate(models.Model):  # 건물 위키 수정시간 및 ip 기록
    building = models.ForeignKey(BuildingInfo, on_delete=models.CASCADE)
    updated_ip = models.CharField(max_length=45)
    modify_cont = models.TextField()
    updated_at = models.DateTimeField(auto_now=True)  # 해당 레코드 갱신시 현재 시간 자동저장

    @classmethod
    def delete_expired_records(cls):  # 수정 기록데이터가 마지막으로 수정된 지 특정 기간(40일) 지나면 삭제
        expiration_date = timezone.now() - timedelta(days=40)
        cls.objects.filter(updated_at__lt=expiration_date).delete()

class Comments(models.Model): # 장소 댓글
    # place = models.ForeignKey(Place, on_delete=models.CASCADE)
    # place_id = models.TextField(blank=True, null=True)
    building_name = models.TextField(blank=True, null=True)
    tag = models.TextField(blank=True, null=True)

    updated_ip = models.CharField(max_length=45)
    updated_at = models.DateTimeField(auto_now=True)  # 해당 레코드 갱신시 현재 시간 자동저장
    comment = models.TextField(blank=True, null=True)

class Report(models.Model):
    contentid = models.TextField()
    report_title = models.TextField() # 신고항목
    report_contents = models.TextField() # 신고내용
    report_time = models.DateTimeField(auto_now_add=True)
    user_ip = models.CharField(max_length=45)
"""    
Place에서 Image 필드 업데이트
# UPDATE "main"."myproj_place"
# SET "image" = '2d_map/paldal_10F.jpg'
# WHERE "floor" = 10;
"""


# user = models.ForeignKey(
#         "users.User",
#         on_delete=models.CASCADE,
#         related_name="wishlists",
#     )

# Create your models here.