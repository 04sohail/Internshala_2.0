from atexit import register
from django.contrib import admin

from employerapp.models import EmployePostModel, EmployerRegModel

# Register your models here.
admin.site.register(EmployerRegModel)
admin.site.register(EmployePostModel)
