from abc import update_abstractmethods
from cgi import print_environ
from datetime import date, datetime
from turtle import update
from xmlrpc.client import DateTime
from django.db import models
from employerapp.models import EmployePostModel

# Create your models here.
class StudentRegModel(models.Model):
    student_id=models.AutoField(primary_key=True)
    first_name=models.CharField(max_length=100,help_text='Enter First name')
    last_name=models.CharField(max_length=100,help_text='Enter Last name')
    email=models.EmailField(max_length=100,help_text='Enter email')
    password=models.CharField(max_length=100,help_text='Enter Password')
    
    def __str__(self):
        return self.first_name + ' ' + self.last_name 
    
    class Meta:
        db_table='student_details'
    
class StudentApplyModel(models.Model):
    student_id = models.IntegerField(null=True)
    app_id=models.AutoField(primary_key=True)
    internship=models.ForeignKey(EmployePostModel,db_column="internship_id",null=True,on_delete=models.SET_NULL,related_name='internship')
    student_name=models.CharField(max_length=100)
    Qualification=models.CharField(max_length=100)
    Percentage=models.CharField(max_length=100)
    City=models.CharField(max_length=100)
    State=models.CharField(max_length=100)
    Pcode=models.CharField(max_length=100)
    email=models.CharField(max_length=100)
    Skills=models.TextField(null=True)
    CoverLetter=models.TextField(null=True)
    Resume=models.ImageField(upload_to='images/',null=True)
    status = models.CharField(max_length=100,default='pending')
    Applied_date=models.DateField(auto_now_add=True)
    
    def __str__(self):
        return self.student_name
     
    class Meta:
        db_table='applied_details'
        
class StudentSavedModel(models.Model):
    save_id = models.AutoField(primary_key=True)
    student_id = models.IntegerField(null=True) 
    internship= models.ForeignKey(EmployePostModel,db_column="internship", on_delete=models.SET_NULL,null=True, related_name="intern")
    save_date = models.DateField(auto_now_add=True,null=True)
    
    def __str__(self):
        return str(self.internship_id)

    class Meta:
        db_table='Saved_details' 