from django import forms
from myproj.models import Place


class PlaceForm(forms.ModelForm): #사용자가 위키 수정 범위
    class Meta:
        model = Place  # 사용할 모델
        fields = ['wiki']


class DetailForm(forms.ModelForm): #사용자가 검색 했을 때 나온 장소들의 '상세정보 보기' 클릭 시 나오는 창
    class Meta:
        model = Place
        fields = ['building_name', 'location', 'category', 'image', 'explain'] #image는 2d도면