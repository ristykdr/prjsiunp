#views RPS
from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.
def index(request): #index dari rps
    return render(request,'rps.html')

def submenurps(request):
    return HttpResponse("ini adalah submenu rps")