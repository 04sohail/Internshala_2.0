from ast import Return
from dataclasses import dataclass
from datetime import date, timedelta
from tabnanny import check
from xmlrpc.client import DateTime
from django.http import request
from django.shortcuts import get_object_or_404, redirect, render
from employerapp.models import EmployePostModel
from django.contrib import messages
from django.core.mail import EmailMultiAlternatives
from Internshala20.settings import DEFAULT_FROM_EMAIL
from django.db.models import Q 


from userapp.models import StudentApplyModel, StudentRegModel, StudentSavedModel

# Create your views here.
def studentlogin(request):
    if request.method=="POST":
        print("valid")
        name = request.POST.get('Username')
        password =request.POST.get('Password')
        
        try:
           check=StudentRegModel.objects.get(email=name,password=password)
           request.session["student_id"]=check.student_id
           return redirect ('student_home')
        except: 
            messages.error(request, "Message sent." ) 
    return render(request,'student/Studentlog.html')

def Student_reg(request):
    if request.method == "POST":
        fname = request.POST.get('fname')
        lname = request.POST.get('lname')
        email = request.POST.get('email')
        password = request.POST.get('password')
        if not fname or not lname or not email or not password:
            messages.error(request, "All fields are required.")
            return render(request, 'student/Studentreg.html')
        if StudentRegModel.objects.filter(email=email).exists():
            messages.error(request, "This email is already registered.")
            return render(request, 'student/Studentreg.html')
        StudentRegModel.objects.create(first_name=fname, last_name=lname, email=email, password=password)
        messages.success(request, "Registration successful.")
        return redirect('student_reg')  
    return render(request, 'student/Studentreg.html')

def Student_home(request):
    Design_and_Creative=EmployePostModel.objects.filter(Profile="Design and Creative").count()
    Design_and_Development=EmployePostModel.objects.filter(Profile="Design and Development").count()
    Sales_and_Marketing=EmployePostModel.objects.filter(Profile="Sales and Marketing").count()
    Mobile_Application=EmployePostModel.objects.filter(Profile="Mobile Application").count()
    Construction=EmployePostModel.objects.filter(Profile="Construction").count()
    Information_Technology=EmployePostModel.objects.filter(Profile="Information Technology").count()
    bpo=EmployePostModel.objects.filter(Profile="BPO").count()
    Content_Writer=EmployePostModel.objects.filter(Profile="Content Writer").count()
        
    return render(request,'student/studenthome.html',{'Design_and_Creative':Design_and_Creative,'Design_and_Development':Design_and_Development,'Sales_and_Marketing':Sales_and_Marketing,'Mobile_Application':Mobile_Application,'Construction':Construction,'Information_Technology':Information_Technology,'bpo':bpo,'Content_Writer':Content_Writer} )

def Student_form(request):
    
    return render(request,'student/studentform.html')

def Student_saved(request):
    student_id=request.session["student_id"]
    data=StudentSavedModel.objects.filter(student_id=student_id)
       
    # details=EmployePostModel.objects.filter(internship_id=iid.filter(internship_id=data))  
    messages.success(request, "Message sent." )
    return render (request,'student/student_saved_internships.html',{'internships': data})
 
def Student_internships(request):
    internships=EmployePostModel.objects.filter(emp_status='Accepted')
    
    return render (request,'student/student_internships_view.html',{'internships': internships})

from django.shortcuts import render, get_object_or_404, HttpResponse
from userapp.models import StudentApplyModel, StudentSavedModel
from django.core.files.storage import default_storage

def Student_response(request):
    student_id = request.session.get("student_id")
    
    if not student_id:
        return HttpResponse("Student ID is not set in session.", status=400)
    
    # Retrieve the profile for the student or return a 404 if not found
    profile = StudentApplyModel.objects.filter(student_id=student_id)
    if not profile.exists():
        return HttpResponse("Profile not found.", status=404)
    
    # We assume there will be at least one profile; use the first one
    edit = profile.first()
    Applied = profile.count()
    Saved = StudentSavedModel.objects.filter(student_id=student_id).count()
    
    if request.method == "POST":
        Name = request.POST.get('fname')
        Qualification = request.POST.get('qualification')
        Percentage = request.POST.get('percentage')
        City = request.POST.get('City')
        State = request.POST.get('State')
        Pcode = request.POST.get('Pcode')
        email = request.POST.get('email')
        Skills = request.POST.get('skills')
        
        Resume = edit.Resume  # Default to existing resume if no new file is uploaded
        if 'resume' in request.FILES:
            Resume = request.FILES['resume']
            # Save the file using the default storage
            if default_storage.exists(edit.Resume.name):
                default_storage.delete(edit.Resume.name)  # Delete the old file if needed
        
        # Update or save the profile
        edit.student_name = Name
        edit.Qualification = Qualification
        edit.Percentage = Percentage
        edit.City = City
        edit.State = State
        edit.Pcode = Pcode
        edit.Resume = Resume
        edit.email = email
        edit.Skills = Skills
        edit.save()
    
    return render(request, 'student/student_response.html', {
        'profile': profile,
        'Applied': Applied,
        'Saved': Saved
    })


def Student_sent_resume(request):
    student_id=request.session["student_id"]
    internships=StudentApplyModel.objects.filter(student_id=student_id)
    return render (request,'student/student_sent_resume.html',{'internships': internships})

def internship_listing(request):
    Listing=EmployePostModel.objects. filter(emp_status='Accepted')
    if request.method=="POST" and 'searchbtn' in request.POST:
        print('search')
        search=request.POST.get("search")
        Listing=EmployePostModel.objects.filter(emp_status='Accepted').filter(Q(location__icontains=search) | Q(Organization_name__icontains=search) | Q(Profile__icontains=search)|Q(Internship_type__icontains=search))
    elif request.method=="POST" and 'filterbtn' in request.POST:
        print('filter')
        location = request.POST.get("location")
        print(location)
        profile = request.POST.get("profile")
        print(profile)
        internship_type=request.POST.get("internship_type")
        print(internship_type)
        posted_within=request.POST.get("posted_date")
        a=date.today()
        b=date.today()+ timedelta(days=2)
        c=date.today()+ timedelta(days=5)
        d=date.today()+ timedelta(days=10)
        # print(posted_within)
        if posted_within=="Today":
            posted_within=a
            print(posted_within)
        elif posted_within=="Last 2 days":
            posted_within=b
            print(posted_within)
        elif posted_within=="Last 5 days":
            posted_within=c
            print(posted_within)
        elif posted_within=="Last 10 days":
            posted_within=d
            print(posted_within)        
                
        Listing=EmployePostModel.objects.filter(emp_status='Accepted').filter(Q(location__iexact=location) | Q(Profile__iexact=profile) | Q(Internship_type__iexact=internship_type)|Q(Posted_date__iexact=posted_within))
        print(Listing)
    return render(request,'student/student_Internship_listing.html', {'List':Listing})

def apply_internship(request,id):
    EmployePostModel.objects.filter(internship_id=id)
    student_id=request.session["student_id"]
    data = {'student_id':''}
    record=StudentApplyModel.objects.filter(student_id=student_id).count()
    if record > 0:
        data = StudentApplyModel.objects.filter(student_id=student_id)
    print(record)
    
    if request.method=="POST" and request.FILES["resume"]:
        Name=request.POST.get('fname')
        Qualification=request.POST.get('qualification')
        Percentage=request.POST.get('percentage')
        City=request.POST.get('City')
        State=request.POST.get('State')
        Pcode=request.POST.get('Pcode')
        Resume=request.FILES['resume']
        email=request.POST.get('email')
        Skills=request.POST.get('skills')
        CoverLetter=request.POST.get('cover_letter')
        StudentApplyModel.objects.create(student_id=student_id,student_name=Name,Qualification=Qualification,Percentage=Percentage,City=City,State=State,Pcode=Pcode,Resume=Resume,email=email,Skills=Skills,CoverLetter=CoverLetter,internship_id=EmployePostModel.objects.filter(internship_id=id).values('internship_id'))
        messages.success(request, "Applied successfully." )
    return render(request,'student/studentform.html',{'data':data})
    

def save(request,id): 
    student_id=request.session["student_id"]
    StudentSavedModel.objects.create(student_id=student_id,internship_id=EmployePostModel.objects.filter(internship_id=id).values('internship_id'))  
    messages.success(request, "Message sent." )   
    return render(request,'student/student_Internship_listing.html')

def internship_details(request,id):
    Detail=EmployePostModel.objects.filter(internship_id=id)   
    return render(request,'student/student_Internship_details.html', {'D':Detail})


 
