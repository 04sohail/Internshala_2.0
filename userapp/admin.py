from django.contrib import admin

from userapp.models import StudentRegModel, StudentSavedModel

# Register your models here.
admin.site.register(StudentRegModel)
admin.site.register(StudentSavedModel)