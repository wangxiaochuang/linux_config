from django.shortcuts import render
from django.core import serializers
from django.http import HttpResponse
from version.models import Gitnote
import json

# Create your views here.
def index(request):
    noteall = Gitnote.objects.all()
    projs = Gitnote.objects.values('projName').distinct()
    return render(request, 'home.html', {'noteall':noteall, 'projs':projs})

def add(request):
    return HttpResponse('test')

def filter(request):
    data = request.GET.get('projName', '')
    res = serializers.serialize("json", Gitnote.objects.filter(projName=data))  
    return HttpResponse(res, content_type="application/json")
