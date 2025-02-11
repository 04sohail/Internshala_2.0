from django.shortcuts import get_object_or_404, redirect, render
from userapp.models import  StudentRegModel,StudentApplyModel
from employerapp.models import EmployePostModel,EmployerRegModel
from django.contrib import messages
from django.core.mail import EmailMultiAlternatives
from Internshala20.settings import DEFAULT_FROM_EMAIL



# Create your views here.
def Admin_home(request):
    emp=EmployerRegModel.objects.count()
    post=EmployePostModel.objects.filter(emp_status='pending').count()
    internship=EmployePostModel.objects.filter(emp_status='Accepted').count()
    user=StudentRegModel.objects.count()
    return render(request,'admin/adminhome.html',{'Employes':emp,'req':post,'Internships':internship,'users':user})


def Admin_Employer(request):
    emp_id=request.session["emp_id"] 
    Employer= EmployerRegModel.objects.all()
    internshipcount= EmployePostModel.objects.filter(emp_id=emp_id).count()
    
    return render(request,'admin/admin_emp_view.html', {'Employer':Employer,'internshipcount':internshipcount})


def Admin_Request(request):     
    Request= EmployePostModel.objects.filter(emp_status="pending") 
    messages.success(request, "Message sent." )           
    return render(request,'admin/admin_req_view.html',  {'Req':Request})


def update_employe_active(request,id):
    object = get_object_or_404(EmployePostModel,internship_id=id)
    object.emp_status="Accepted"
    object.save(update_fields=["emp_status"])
    messages.success(request, "Message sent." )
    #email code
    html_content = "<br/><p>INTERNSHIP POST REQUEST Status :<strong> Accepted </strong> </p>"
    from_mail = DEFAULT_FROM_EMAIL
    to_mail = [object.email]
    # if send_mail(subject,message,from_mail,to_mail):
    msg = EmailMultiAlternatives("INTERNSHIP POST Status", html_content, from_mail, to_mail)
    msg.attach_alternative(html_content, "text/html")
    if msg.send():
        print("Sent")
    return redirect("admin_Request")

    
def update_employe_reject(request,id):
    object = get_object_or_404(EmployePostModel,internship_id=id)
    object.emp_status="Rejected"
    object.save(update_fields=["emp_status"])
    messages.success(request, "Message sent." )
    #email code
    html_content = "<br/><p>INTERNSHIP POST REQUEST Status :<strong> Rejected </strong> </p>"
    from_mail = DEFAULT_FROM_EMAIL
    to_mail = [object.email]
    # if send_mail(subject,message,from_mail,to_mail):
    msg = EmailMultiAlternatives("INTERNSHIP POST Status", html_content, from_mail, to_mail)
    msg.attach_alternative(html_content, "text/html")
    if msg.send():
        print("Sent")
    return redirect("admin_Request")

    
def Admin_Internships(request):
    internships=EmployePostModel.objects.filter(emp_status="Accepted")
    return render(request,'admin/admin_internship.html', {'intern': internships})


def Admin_user(request):
    student=StudentApplyModel.objects.all()
    return render(request,'admin/admin_user_view.html', { 'Apply':student} )
