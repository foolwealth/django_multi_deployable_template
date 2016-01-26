from django.shortcuts import render
from lib_a import helper


def index(request):
    return render(request, 'hello_world/index.html', {'quote': helper.say_thing()})


