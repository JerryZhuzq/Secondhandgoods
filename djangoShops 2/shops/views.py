import json

from django.core import serializers
from django.core.paginator import Paginator
from django.http import JsonResponse
from django.shortcuts import render

# Create your views here.
from django.views import View

from shops.models import shops,files
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt


#新增
class index(View):
    @method_decorator(csrf_exempt)
    def dispatch(self, request, *args, **kwargs):
        return super().dispatch(request, *args, **kwargs)

    def get(self, request):
        return render(request, 'create-shop.html')

    def post(self, request):
        reqData = json.loads(request.body)
        title = reqData.get('title',None)
        content = reqData.get('content',None)
        price = reqData.get('price',None)
        fileUrl = reqData.get('img',None)
        if title is None:
            return JsonResponse({"code": 1000, "msg": "Name could not be empty!"})
        if content is None:
            return JsonResponse({"code": 1000, "msg": "Descriptions could not be empty!"})
        if price is None:
            return JsonResponse({"code": 1000, "msg": "Price could not be empty!"})
        if fileUrl is None:
            return JsonResponse({"code": 1000, "msg": "Picture(s) could not be empty!"})
        shops.objects.create(title=title,content=content,price=price,fileUrl=fileUrl)

        return JsonResponse({"code": 2000, "msg": "Successfully Upload!"})


#列表
class shopList(View):
    @method_decorator(csrf_exempt)
    def dispatch(self, request, *args, **kwargs):
        return super().dispatch(request, *args, **kwargs)
    def get(self,request):
        return render(request,'shop-list.html')
    def post(self,request):
        reqData = json.loads(request.body)
        pageIndex = reqData.get('pageIndex', 1)
        pageSize = reqData.get('pageSize', 10)
        lists = shops.objects.all()
        pageInator = Paginator(lists, pageSize)
        contacts = pageInator.page(pageIndex)
        json_data = serializers.serialize("json", contacts)
        res = {
            "code": 2000,
            "msg": "Successfully Received",
            "count": len(lists),
            "data": json.loads(json_data)
        }
        return JsonResponse(res)

#图片上传
class uploadFile(View):
    @method_decorator(csrf_exempt)
    def dispatch(self, request, *args, **kwargs):
        return super().dispatch(request, *args, **kwargs)
    def get(self,request):
        data ={
                "code": 0,           # 0 表示上传失败，1 表示上传成功
                "msg": "Upload Failed",
                "url": ""       # 上传成功时才返回
            }
        return JsonResponse(data)


    def post(self,request):
        ip = request.get_host()
        imgs = request.FILES.get('file')
        name = str(imgs).split('.')[0]
        data = {
            "name": name,
            "url": imgs
        }
        Files = files.objects.create(**data)
        res = {
            "code": 2000,  # 0 表示上传失败，1 表示上传成功
            "msg": "Successfully Upload",
            "data": '/media/'+ str(Files.url)  # 上传成功时才返回
        }
        return JsonResponse(res)