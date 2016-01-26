from django.conf.urls import include, url
from django.contrib import admin

import hello_world.urls

urlpatterns = [
    url(r'^admin/', include(admin.site.urls)),
    url(r'^', include(hello_world.urls))
]
