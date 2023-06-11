from django.http import HttpResponse
from  django.shortcuts import render
from . import models
import random
import mysql.connector as mycon
from datetime import date
from datetime import datetime
from . import sendMail
from . import doc

def searchdocs(request):
    if request.method == 'POST':
        query=request.POST.get("query")  
        data=models.getDocs2(query) 
        print("doc len="+str(len(data)))
        if len(data) == 0:
            return render(request, "documentsNA.html",{"list":data})
        else:
            return render(request, "documents.html",{"list":data})
def index(request):
    data= models.getStates()
    return render(request, "index.html",{"list":data})
def uploaddoc(request): 
    return render(request, "uploads.html")
def user(request): 
    return render(request, "user.html")
def logout(request):
    del request.session["user"]  
    data= models.getStates()
    return render(request, "index.html",{"list":data})
    
def otpverification(request):
    if request.method == 'POST':
        docid=request.POST.get("docid")  
        docpath=request.POST.get("docpath")  
        seckey=request.POST.get("seckey")  
        otp=request.POST.get("otp")  
        otp1=request.session['otp']
        if otp==otp1:
            infile='../searchable_cloud_enc/static/Uploads/'+docpath
            outfile='../searchable_cloud_enc/static/Uploads/temp/'+docpath
            doc.decrypt(seckey,infile,outfile)
        today = date.today()
        dt= today.strftime("%d/%m/%Y")
        models.insertUsageLog(request.session["userid"],'decryption',dt)         
        return render(request, "download.html",{"docpath":docpath})
def sendotp(request):
    if request.method == 'POST':
        docid=request.POST.get("docid")  
        docpath=request.POST.get("docpath")  
        seckey=request.POST.get("seckey")  
        emailid= request.session['emailid']
        otp=str(random.randint(1111,9999))
        request.session['otp']=otp
        sendMail.sendotp(otp,emailid)
        today = date.today()
        dt= today.strftime("%d/%m/%Y")
        models.insertUsageLog(request.session["userid"],'email',dt)
        return render(request, "otpauth.html",{"docid":docid,"docpath":docpath,"seckey":seckey})
def getDocs(request): 
    userid= request.session['userid']
    data= models.getDocs1(userid)
    if len(data) == 0:
        return render(request, "documentsNA.html",{"list":data})
    else:
        return render(request, "documents1.html",{"list":data})
def cloudpayment(request):      
    return render(request, "cloudpayment.html")   
    
def Cities(request):
    data= models.getCities(request.GET.get("state"))    
    return render(request, "cities.html",{"list":data})
def GetPaymentDetails(request):
    userid= request.session['userid']
    data= models.getrent(request.POST.get("mon"),request.POST.get("yr"),userid)
    total=0
    
    for rec in data:         
            total=total+rec[1]
    return render(request, "showpayment.html",{"list":data,"total":total})
def login(request):
    if request.method == 'POST':
        userid=request.POST.get("userid") 
        pass1=request.POST.get("pass") 
        val=models.login(userid,pass1)
         
        request.session["user"]={"userid":val[0][0],"utype":val[0][3],"username":val[0][2]}    
        request.session["userid"]=val[0][0] 
        request.session["emailid"]=models.getEmail(val[0][0])   
        if val[0][3]=="admin":
            data= models.getUsers()
            return render(request, "admin.html",{"list":data})             
        else:
            return render(request, "user.html",{"mess":"Your Registration Done Successfully..."}) 
def registeruser(request):
    if request.method == 'POST':
        userid=request.POST.get("userid")   
        usernm=request.POST.get("usernm")
        pswd=request.POST.get("pswd")
        emailid=request.POST.get("emailid")
        mobileno=request.POST.get("mobileno")
        gender=request.POST.get("gender")
        pincode=request.POST.get("pincode")
        addr=request.POST.get("addr")
        state=request.POST.get("state")
        cities=request.POST.get("cities")
        dob=request.POST.get("dob")
        print(userid)
        print(usernm)
        print(pswd)
        print(emailid)
        photo=models.handle_uploaded_file2(request.FILES['file'],userid)
                 
        models.insertUser(userid,pswd,usernm,addr,pincode,mobileno,emailid,gender,dob,state,cities,photo)
    return render(request, "Success.html",{"mess":"Your Registration Done Successfully..."})
def upload(request):
    if request.method == 'POST':
        userid=request.session["userid"]
        title=request.POST.get("title")
        desc=request.POST.get("desc") 
        print(userid) 
        print(title)
        print(desc)
        docid=models.getMaxIdDoc1()
        skey1="key@"+str(random.randint(11,99))
        docPath=models.handle_uploaded_file(request.FILES['file'],docid,skey1,title,desc)
        today = date.today()
        now = datetime.now()
        dt= today.strftime("%d/%m/%Y")
        tm = now.strftime("%H:%M:%S")
        print("date and time ="+ dt)
        
        models.insertDoc1(userid,title,docPath,desc,dt,tm,skey1)
        models.insertUsageLog(request.session["userid"],'encryption',dt)
    return render(request, "Success1.html",{"mess":"Document Uploaded Successfully...","link":"/user"})

def deletedoc(request):
    if request.method == 'POST':        
        docid=request.POST.get("docid") 
        models.deletedoc(docid)
       
    return render(request, "Success1.html",{"mess":"Document Deleted Successfully...","link":"/user"})