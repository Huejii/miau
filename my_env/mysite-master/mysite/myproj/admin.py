from django.contrib import admin
from .models import Place, SavePlaceUpdate, BuildingInfo, LectureInfo, Comments, Report, SaveBuildingUpdate


class PlaceInfoAdmin(admin.ModelAdmin):
    list_display = ['building_name', 'loc_num', 'location','floor', 'image', 'explain', 'created_at', 'updated_at', 'wiki', 'coords']
    search_fields = (
        'loc_num',
        'location',
        'floor',
        'building_name',
        'explain',
        'wiki',
    )

    # building_name = models.TextField(blank=True)
    # location = models.TextField()
    # image = models.TextField(blank=True)
    # explain = models.TextField(blank=True)
    # created_at = models.DateTimeField(auto_now_add=True)  # 해당 레코드 생성시 현재 시간 자동저장
    # updated_at = models.DateTimeField(auto_now=True)  # 해당 레코드 갱신시 현재 시간 자동저장
    # lecture_info
class BuildingInfoAdmin(admin.ModelAdmin):
    list_display = ['building_name', 'floor_info', 'campus_info', 'users', 'built_date',]
    search_fields = (

        'building_name', 'floor_info', 'campus_info', 'users', 'built_date',
    )


class UpdateRecordAdmin(admin.ModelAdmin):
    list_display = ['modify_cont',  'updated_ip', 'updated_at']
    search_fields = (

        'modify_cont', 'updated_ip', 'updated_at'
    )

class LectureInfoAdmin(admin.ModelAdmin):
    list_display = ['place', 'mon', 'mon_time','tue', 'tue_time','wed','wed_time', 'thr','thr_time','fri','fri_time','sat','sat_time']
    search_fields = (

        'place', 'mon', 'mon_time','tue', 'tue_time','wed','wed_time', 'thr','thr_time','fri','fri_time','sat','sat_time'
    )

class CommentsAdmin(admin.ModelAdmin):
    list_display = ['id', 'building_name', 'tag', 'comment']
    search_fields = (
        'id', 'building_name', 'tag', 'comment'
    )

class ReportAdmin(admin.ModelAdmin):
    list_display = ['contentid', 'report_title', 'report_contents', 'user_ip', 'report_time']
    search_fields = (
        'contentid', 'report_title', 'report_contents', 'user_ip', 'report_time'
    )
admin.site.register(Place, PlaceInfoAdmin)
admin.site.register(SavePlaceUpdate, UpdateRecordAdmin)
admin.site.register(SaveBuildingUpdate, UpdateRecordAdmin)
admin.site.register(BuildingInfo, BuildingInfoAdmin)
admin.site.register(LectureInfo, LectureInfoAdmin)
admin.site.register(Comments, CommentsAdmin)
admin.site.register(Report, ReportAdmin)
# Register your models here.
