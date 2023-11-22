from django.shortcuts import render
from rest_framework.response import Response
from rest_framework.views import APIView
from .models import Place, SavePlaceUpdate

from mysite.settings import MEDIA_ROOT

import os
from uuid import uuid4

"""_summary_

  ORM 사용해서 코드만 수정하면 자동으로 SQL문으로 변환해서 DB에 반영하도록함
      _type_: _description_
"""


class Main(APIView):
    def get(self, request):

        place_list = Place.objects.all()
        # Place 테이블에서 모든 콘텐츠 불러옴
        SavePlaceUpdate.delete_expired_records() #기한 만료된 수정기록 삭제
        return render(request, "mysite/main.html", context=dict(placeinfo=place_list))


# context=dict(place_list=place_list)






# Create your views here.
