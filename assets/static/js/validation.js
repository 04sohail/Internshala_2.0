function registration(){
    // var name, email, password, conpassword;
    var fname=document.myform.fname
    var lname=document.myform.lname
    var email=document.myform.email
    var emailformat=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id
    var password=document.myform.password
    
    var letter = /[a-z]/;
    var upper = /[A-Z]/;
    var number = /[0-9]/;
    var conpassword=document.myform.conpassword

    // if (name.value == '' ||  email.value == ''  || password.value == '' || conpassword.value == '') {
    //     alert("Please Enter All Details");
    //     return false;
    // }

    if(fname.value=='' || fname.value.length<6){
        alert("FirstName cannot be balnk and should be more than 6 alphabets")
        fname.focus();
        return false;
    }

    if(lname.value=='' || lname.value.length<6){
        alert("LastName cannot be balnk and should be more than 6 alphabets")
        lname.focus();
        return false;
    }

    if (email.value == ''|| !email.value.match(emailformat)) {
        alert("Please Enter Valid Email Id");
        return false;
    }

    if (password.value=='' || password.length < 6) {
        alert("Please make sure password is longer than 6 characters.")
        return false;
    }

    if (!letter.test(password.value)) {
        alert("Please make sure password includes a lowercase letter.")
        return false;
    }

     if (!number.test(password.value)) {
        alert("Please make sure Password Includes a Digit")
        return false;
    }

     if (!upper.test(password.value)) {
        alert("Please make sure password includes an uppercase letter.");
        return false;
    }

    if (password.value != conpassword.value) {
        alert("Please make sure passwords match.")
        return false;
    }
    
    else { 
        return true;
    }

}

function post() {
    var name=document.myform.org_name
    var email=document.myform.email
    var emailformat=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id
    var contact=document.myform.mobile
    var website=document.myform.website
    var year=document.myform.Year
    var pan=document.myform.Pan
    var location=document.myform.location
    var profile=document.myform.profile
    var Internship_type=document.myform.internship_type
    var No_of_openings=document.myform.openings
    var date=document.myform.start_date
    var duration=document.myform.duration
    var stiepend=document.myform.stiepend
    var skills=document.myform.skills
    var description=document.myform.description
    var pic=document.myform.Profile_picture
    var checkbox=document.myform.checkbox

    if(name.value=='' || name.value.length<4){
        alert("Organiztion Name cannot be balnk")
        name.focus();
        return false;
    }

    if (email.value == ''|| !email.value.match(emailformat)) {
        alert("Please Enter Valid Email Id");
        return false;
    }

    if (contact.value == '') {

        alert("Please Enter Contact Number");

        return false;

    }

     
    if (website.value == ''){
        alert("Please Enter Website");
        return false;
    }

    if (year.value==''){
        alert("Please Enter Year of Establishment");
        return false;
    }

    if (pan.value==''){
        alert("Please Enter your PAN number");
        return false;
    }

    if (location.value==''){
        alert("Please Enter Location");
        return false;
    }

    if (profile.value == 'Profile'){
        alert("Please Select Profile");
        
        return false;
    }

    if (Internship_type.value=='Internship Type'){
         alert("Please Select Internship_type");
         return false;
     }

    if (No_of_openings.value==''){
        alert("Please  Enter No of openings");
        return false;
    }

    if (date.value==''){
        alert("Please  Enter Start date");
        return false;
    }

    if (duration.value=='Duration'){
        alert("Please Select Duration");
        return false;
    }

    if (stiepend.value=='Stiepend'){
        alert("Please Select Stiepend");
        return false;
    }
    
    if (skills.value==''){
        alert("Please  Enter Skills Required");
        return false;
    }

    if (description.value==''){
        alert("Please Enter Description");
        return false;
    }

    if (pic.value==''){
        alert("Please Upload Profile Pic");
        return false;
    }

    if (!checkbox.checked){
        alert("You must agree to the terms first.");
        return false;
    }

    return true;
   
}

function apply() {
    var name=document.myform.fname
    var email=document.myform.email
    var emailformat=/^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([com\co\.\in])+$/; // to validate email id
    var qualification=document.myform.qualification
    var percentage=document.myform.percentage
    var City=document.myform.City
    var State=document.myform.State
    var Pcode=document.myform.Pcode
    var skills=document.myform.skills
    var resume=document.myform.resume
    var checkbox=document.myform.checkbox

    if(name.value=='' || name.value.length<4){
        alert("Name cannot be balnk")
        name.focus();
        return false;
    }

    if (email.value == ''|| !email.value.match(emailformat)) {
        alert("Please Enter Valid Email Id");
        return false;
    }


    if (qualification.value == '__Select One__'){
        alert("Please Select Qualification");
        
        return false;
    }


    if (percentage.value == ''){
        alert("Please Enter Percentage");
        return false;
    }

    if (City.value==''){
        alert("Please Enter City");
        return false;
    }
 
    if (State.value==''){
        alert("Please Enter State");
        return false;
    }

    if (Pcode.value==''){
        alert("Please Enter Postal code");
        return false;
    }

    
     
    
    if (skills.value==''){
        alert("Please  Enter Your Skills");
        return false;
    }

     

    if (resume.value==''){
        alert("Please Upload Your Resume");
        return false;
    }

    if (!checkbox.checked){
        alert("You must agree to the terms first.");
        return false;
    }

    return true;
   
}