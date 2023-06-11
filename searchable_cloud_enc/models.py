import mysql.connector as mycon
from . import ECC
import os
from . import CeasarEncryption
from . import KeywordsFinder
import urllib.request
from . import TextExtractionFromPDF
from . import DBOperations
from . import TextPreProcessing
import functools 

def connect() : 
    con=mycon.connect(host='#',user='#',password='#',database='#') # need to feel everything to connect mySql database
    
    return con
def getStates():
    conn = connect()
    #integrated security 
    cursor = conn.cursor() 
    cursor.execute('select state from statemaster;')
    data=cursor.fetchall()
    conn.close()
    return data

def getDocs2(query="NA"):
    conn = connect()
    #integrated security 
    cursor = conn.cursor() 
    print("qr="+"select docid,userid,title,docdesc,dt,tm,filepath,convert((aes_decrypt(skey,docid)),char(900)) from documents where docid in (select docid from keywords1 where keyw like '%"+encrypKeyw(query)+"%')")
    cursor.execute("select docid,userid,title,docdesc,dt,tm,filepath,convert((aes_decrypt(skey,docid)),char(900)) from documents where docid in (select docid from keywords1 where keyw like '%"+encrypKeyw(query)+"%' or title like '%"+(query)+"%')")
    data=cursor.fetchall()
    #print(data[0][0])
    conn.close()
    return data
def getDocs1(userid="NA"):
    conn = connect()
    #integrated security 
    cursor = conn.cursor() 
    cursor.execute("select docid,userid,title,docdesc,dt,tm,filepath,convert((aes_decrypt(skey,docid)),char(900)) from documents where userid='"+userid+"'")
    data=cursor.fetchall()
    #print(data[0][0])
    conn.close()
    return data
def getUsers():
    conn = connect()
    #integrated security 
    cursor = conn.cursor() 
    cursor.execute('select usernm,mobileno,emailid,addr,pincode from userdetails;')
    data=cursor.fetchall()
    conn.close()
    return data
def getrent(mon=0,yr=0,userid="NA"):
    conn = connect()
    #integrated security 
    cursor = conn.cursor() 
    print("qr="+"select action,(count(*)*1) as rent from usagelog   where actiondt like '%/"+str(mon)+"/"+str(yr)+"' and userid='"+userid+"' group by action")
    cursor.execute("select action,(count(*)*1) as rent from usagelog   where actiondt like '%/"+str(mon)+"/"+str(yr)+"' and userid='"+userid+"' group by action")
    data=cursor.fetchall()
    conn.close()
    return data
def getCities(state="NA"):
    conn = connect()
    #integrated security 
    cursor = conn.cursor() 
    cursor.execute("select city from cities where state='"+state+"'")
    data=cursor.fetchall()
    conn.close()
    return data
def handle_uploaded_file(f,docid,key,title="nA",desc="NA"):
    nm,ext=os.path.basename(f.name).split('.')
    print("nm="+nm+" "+ext)
    with open('../searchable_cloud_enc/static/Uploads/temp/'+str(docid)+"."+ext, 'wb+') as destination:  
        for chunk in f.chunks():  
            destination.write(chunk) 
    uploaded_file_path='../searchable_cloud_enc/static/Uploads/temp/'+str(docid)+"."+ext
    data=TextExtractionFromPDF.docToText(uploaded_file_path)
            #data="hi how are you"
            #print("path="+uploaded_file_path)
    data1=TextPreProcessing.removeSpaces(data.strip())
            #print(data1.strip())
    filename=str(docid)+"."+ext
    docidtuple=DBOperations.insertFileData(data1.strip(),filename,title,desc,"NA")
    #docid = functools.reduce(lambda sub, ele: sub * 10 + ele, docidtuple) 
            #print(docToText(uploaded_file_path))
    keywords=KeywordsFinder.test(data1.strip(),docid1=docid) 
            #print("document id=")
            #print(docid)
        #print(keywords)
    DBOperations.insertKeywords(keywords)
        #enckeywords(docid)
    DBOperations.updateKeyw("na",docid)
    ECC.encrypt('../searchable_cloud_enc/static/Uploads/temp/'+str(docid)+"."+ext,'../searchable_cloud_enc/static/Uploads/'+str(docid)+"."+ext,key)
    return str(docid)+"."+ext; 
def handle_uploaded_file2(f,userid):
    nm,ext=os.path.basename(f.name).split('.')
    print("nm="+nm+" "+ext)
    with open('../searchable_cloud_enc/static/Photos/'+userid+"."+ext, 'wb+') as destination:  
        for chunk in f.chunks():  
            destination.write(chunk) 
     
    return userid+"."+ext; 

def getDocs() : 
    lst=[]
    conn = connect()    
    cursor = conn.cursor()
    #cursor.execute("select* from userprofile where userid='"+uid+"'")
    print("select GROUP_CONCAT(keyw SEPARATOR ' ') as txt from keywords k where score>50 group by docid  order by docid asc")
    sql_select_query = "select GROUP_CONCAT(keyw SEPARATOR ' ') as txt from keywords k where score>50 group by docid  order by docid asc"
    cursor.execute(sql_select_query)
    record = cursor.fetchall()
    print(cursor.rowcount)
    final_result = [list(i) for i in record]
    #conn.commit()
    for x in record:
        lst.append(x[0])
        print(x[0]+'\n')
    conn.close()
    return lst
def login(userid="NA",pass1="NA") : 
    val='NA'
    conn = connect()    
    cursor = conn.cursor()
    args = [userid,pass1]
    args1=cursor.callproc('userlogin', args)
    print("Return value:", args1)
    for result in cursor.stored_results():
        val=result.fetchall()
        print(result.fetchall())
    conn.commit()
    print(val[0][0])
    print(val[0][3])
    conn.close()
    return val
def insertKeywords(keywDic) : 
     
    conn = connect()    
    mycursor = conn.cursor()
    sql = "INSERT INTO keywords(keyw,score,docid) VALUES (%s, %s,%s)"
    
    mycursor.executemany ( sql, keywDic )

    conn.commit ( )

    #print ( mycursor.rowcount, "was inserted." )
    
    conn.close()
def encrypKeyw(x,k=0):
  return x[::-1]

def convertToBase64(message='NA') :
    message_bytes = message.encode('ascii')
    base64_bytes = base64.b64encode(message_bytes)
    base64_message = base64_bytes.decode('ascii')
    print(base64_message)
    return base64_message

def convertFromBase64(base64_message='NA') :
    base64_bytes = base64_message.encode('ascii')
    message_bytes = base64.b64decode(base64_bytes)
    message = message_bytes.decode('ascii')
    print(message)
    return message
def insertUser(userid='NA',pass1='NA',name='NA',addr='NA',pincode='NA',mobile="NA",email="NA",gender="Na",dob="NA",state="NA",city="NA",photo="NA") : 
    val='NA'
    conn = connect()    
    cursor = conn.cursor()
    args = [userid,pass1,name,mobile,email,city,state,gender,addr,dob,pincode,photo]
    args1=cursor.callproc('insertUser', args)
    #print("Return value:", args1)
    #for result in cursor.stored_results():
       # val=result.fetchall()
        #print(result.fetchall())
    conn.commit()
    conn.close()
    #print(val[0])
def insertUsageLog(userid='NA',service='NA',dt='NA') : 
    val='NA'
    conn = connect()    
    cursor = conn.cursor()
    args = [userid,service,dt]
    args1=cursor.callproc('insertusage', args)
    #print("Return value:", args1)
    #for result in cursor.stored_results():
       # val=result.fetchall()
        #print(result.fetchall())
    conn.commit()
    conn.close()
    #print(val[0])
def insertDoc1(userid="NA",title="NA",docPath="NA",docDesc='NA',dt="NA",tm="NA",key='NA') : 
    conn = connect()    
    cursor = conn.cursor()
    args = [userid,title,dt,tm,docDesc,key,docPath]
    args1=cursor.callproc('insertDoc', args)
    print("Return value:", args1)
    #for result in cursor.stored_results():
     #       print(result.fetchall())
    cnt=cursor.rowcount 
    conn.commit()
    conn.close()

def deletedoc(docid=0) : 
    conn = connect()    
    cursor = conn.cursor()
    args = [docid]
    args1=cursor.callproc('deleteDoc', args)
    print("Return value:", args1)
    #for result in cursor.stored_results():
     #       print(result.fetchall())
    cnt=cursor.rowcount 
    conn.commit()
    conn.close()


    #args = [userid,title,docPath,docDesc,dt,tm,key]
    #args1=cursor.callproc('insertDoc', args)
    #print("Return value:", args1)
    #for result in cursor.stored_results():
    #        print(result.fetchall())
    #cnt=cursor.rowcount
    
    #return cnt
def getEmail(userid="NA"):
    conn = connect()
    #integrated security 
    cursor = conn.cursor() 
    cursor.execute("select emailid from userdetails where userid='"+userid+"';")
    email="NA"
    for row in cursor: 
        email=row[0]
        print(email)
    conn.close()
    return email 
def getMaxIdDoc1():
    conn = connect()
    #integrated security 
    cursor = conn.cursor() 
    cursor.execute('select (ifnull(max(docid),1000)+1) as mxid from documents;')
    mxid=0
    for row in cursor: 
        mxid=row[0]
        print(int(mxid)+1)
    conn.close()
    return mxid
def getTotalRent(mon=0,yr=0,userid="NA"):
    conn = connect()
    #integrated security 
    cursor = conn.cursor() 
    print("qr="+"select action,(count(*)*1) as rent from usagelog   where actiondt like '%/"+str(mon)+"/"+str(yr)+"' and userid='"+userid+"' group by action")
    cursor.execute("select  sum(count(*)*1) as rent from usagelog   where actiondt like '%/"+str(mon)+"/"+str(yr)+"' and userid='"+userid+"' group by action")
   
    #cursor.execute('select (ifnull(max(docid),1000)+1) as mxid from documents;')
    mxid=0
    for row in cursor: 
        mxid=row[0]
        print(int(mxid)+1)
    conn.close()
    return mxid