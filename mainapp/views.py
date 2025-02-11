from re import A
from tabnanny import check
from django.shortcuts import redirect, render
from adminapp.views import Admin_home
from employerapp.views import Employer_home
from userapp.views import Student_home
from employerapp.models import EmployePostModel


# Create your views here.

def index(request):
    Design_and_Creative=EmployePostModel.objects.filter(Profile="Design and Creative").count()
    Design_and_Development=EmployePostModel.objects.filter(Profile="Design and Development").count()
    Sales_and_Marketing=EmployePostModel.objects.filter(Profile="Sales and Marketing").count()
    Mobile_Application=EmployePostModel.objects.filter(Profile="Mobile Application").count()
    Construction=EmployePostModel.objects.filter(Profile="Construction").count()
    Information_Technology=EmployePostModel.objects.filter(Profile="Information Technology").count()
    bpo=EmployePostModel.objects.filter(Profile="BPO").count()
    Content_Writer=EmployePostModel.objects.filter(Profile="Content Writer").count()
    
    
    
    return render(request,'index.html',{'Design_and_Creative':Design_and_Creative,'Design_and_Development':Design_and_Development,'Sales_and_Marketing':Sales_and_Marketing,'Mobile_Application':Mobile_Application,'Construction':Construction,'Information_Technology':Information_Technology,'bpo':bpo,'Content_Writer':Content_Writer} )

def about(request):
    return render(request,'about.html')

def contact(request):
    return render(request,'contact.html')

def adminlogin(request):
    if request.method == "POST":
        name = request.POST.get('Username')
        password =request.POST.get('Password')
        if name =='admin' and password =='admin':
            return redirect (Admin_home)
        else :
            print ('invalid')    
    return render (request,'admin/adminlog.html')

