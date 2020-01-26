from django.http import HttpResponse
from django.shortcuts import render

def index (request):
    return render(request,'index.html')

def index2(request):
    return HttpResponse("<h1>INI INDEX</h1>")

def tes(request):
    return HttpResponse("ini tes")