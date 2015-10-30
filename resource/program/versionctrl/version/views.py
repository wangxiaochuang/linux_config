from django.shortcuts import render
from django.http import HttpResponse
from version.models import Gitnote

# Create your views here.
def index(request):
    notes = Gitnote.objects.all()
    return render(request, 'home.html', {'notes':notes})

def add(request):
    return HttpResponse('test')

def filter(request):
    data = request.GET.get('projName', '')
    res = Gitnote.objects.get(projName=data)
    return HttpResponse(simplejson.dumps(res), mimetype="application/javascript")
