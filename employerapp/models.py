from ast import Is, Pass
from contextlib import nullcontext
from distutils.command import upload
from operator import truediv
from django.db import models
from django.forms import CharField
import datetime, time

# Create your models here.
class EmployerRegModel(models.Model):
    employer_id=models.AutoField(primary_key=True)
    first_name=models.CharField(max_length=100,help_text='Enter First name')
    last_name=models.CharField(max_length=100,help_text='Enter Last name')
    email=models.EmailField(max_length=100,help_text='Enter First name')
    pan=models.CharField(max_length=100,null=True)
    panpic=models.ImageField(upload_to='images/',null=True)
    password=models.CharField(max_length=100,help_text='Enter Password')
    
    def __str__(self):
        return self.first_name + ' ' + self.last_name 

    class Meta:
        db_table='employer_details'

class EmployePostModel(models.Model):
    emp_id = models.IntegerField(null=True)
    internship_id=models.AutoField(primary_key=True)
    Organization_name=models.CharField(max_length=100)
    mobile=models.BigIntegerField(null=True)
    email=models.EmailField(max_length=100)
    website=models.CharField(max_length=100)
    location=models.CharField(max_length=100)
    Profile=models.CharField(max_length=100 )
    Internship_type=models.CharField(max_length=100 )
    No_of_openings=models.IntegerField( )
    Start_Date=models.CharField(max_length=100)
    Duration=models.CharField(max_length=100)
    Stiepend=models.CharField (max_length=100,null=True )
    Skills=models.TextField ( )
    Description=models.TextField ( )
    Profile_picture=models.ImageField(upload_to='images/',null=True)
    Posted_date=models.DateField(auto_now_add=True)
    emp_status = models.CharField(max_length=100,default='pending')
    Pan=models.CharField(max_length=100,null=True)
    Year_of_establishment=models.IntegerField(null=True)
    Published_date=models.BooleanField(default=True)
    
    def __str__(self):
        return self.Profile +  " " + self.Organization_name 

    class Meta:
        db_table='post_details'  
