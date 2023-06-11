from . import CeasarEncryption
from . import DBConnect 
import base64
import mysql.connector as mycon
from . import doc
def connect() : 
    con=mycon.connect(host='#',user='#',password='#',database='#')
   # need to feel everything for connecting the database 
    return con

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
    
def getDocs1() : 
    lst=[]
    conn = connect()    
    cursor = conn.cursor()
    #cursor.execute("select* from userprofile where userid='"+uid+"'")
    #print("select GROUP_CONCAT(keyw SEPARATOR ' ') as txt from keywords k where score>50 group by docid  order by docid asc")
    sql_select_query = "select lower(replace(replace(CONVERT(docData USING utf8), '\\n', ' '), '\n', ' ' )) as docData from documents order by docid asc;"
    cursor.execute(sql_select_query)
    record = cursor.fetchall()
    print(cursor.rowcount)
    final_result = [list(i) for i in record]
    #conn.commit()
    for x in record:
        lst.append(str(x[0]))
        #print(str(x[0])+'\n')
    conn.close()
    return lst
def deleteClusters() : 
     
    conn = connect()    
    mycursor = conn.cursor()
    sql = "delete from clusters"
    print(sql)
    mycursor.execute ( sql )

    conn.commit ( )
    conn.close() 
def getDocIds() : 
    lst=[]
    conn = connect()    
    cursor = conn.cursor()
    #cursor.execute("select* from userprofile where userid='"+uid+"'")
    print("select GROUP_CONCAT(keyw SEPARATOR ' ') as txt from keywords k where score>50 group by docid  order by docid asc")
    sql_select_query = "select docid from documents order by docid asc"
    cursor.execute(sql_select_query)
    record = cursor.fetchall()
    print(cursor.rowcount)
    final_result = [list(i) for i in record]
    #conn.commit()
    for x in record:
        lst.append(str(x[0]))
        print(str(x[0])+'\n')
    conn.close()
    return lst

def getNoCategories() : 
    lst=[]
    conn = connect()    
    cursor = conn.cursor()
    #cursor.execute("select* from userprofile where userid='"+uid+"'")
    #print("select GROUP_CONCAT(keyw SEPARATOR ' ') as txt from keywords k where score>50 group by docid  order by docid asc")
    sql_select_query = "select count(*) from categories"
    cursor.execute(sql_select_query)
    record = cursor.fetchall()
    print(cursor.rowcount)
    cnt=0
    #conn.commit()
    for x in record:
        cnt=x[0]
    print("no of categories ="+str(cnt))
    conn.close()
    return cnt
 

def getDocsKeyw() : 
    conn = connect()    
    cursor = conn.cursor()
    cursor.callproc('getDocsKeyw')    
    result = cursor.fetchall()
    #final_result = [list(i) for i in result]
    conn.commit() 
    conn.close()
    return result[0]

def insertFileData(data='NA',docpath='NA',title='NA',desc1='NA',cate='NA') : 
    val='NA'
    conn = connect()    
    cursor = conn.cursor()
    args = [docpath,data,title,desc1,cate]
    args1=cursor.callproc('insertDatasetDocs', args)
    #print("Return value:", args1)
    for result in cursor.stored_results():
        val=result.fetchall()
        #print(result.fetchall())
    conn.commit()
    conn.close()
    #print(val[0])
    return(val[0]) 

def getDocData(docid=0) : 
    conn = connect()    
    cursor = conn.cursor()
    #cursor.execute("select* from userprofile where userid='"+uid+"'")
    print("select lower(docData) as docData from documents where docid="+str(docid))
    sql_select_query = "select lower(docData) as docData from documents where docid="+str(docid)
    cursor.execute(sql_select_query)
    record = cursor.fetchall()
    print(cursor.rowcount)
    #final_result = [list(i) for i in record]
    #conn.commit()
    data=""
    for x in record:
        data=str(x[0])
        #print(str(x[0])+'\n')
    conn.close()
    return data

def insertKeywords(keywDic) : 
     
    conn = connect()    
    mycursor = conn.cursor()
    sql = "INSERT INTO keywords(keyw,score,docid) VALUES (%s, %s,%s)"
    
    mycursor.executemany ( sql, keywDic )

    conn.commit ( )

    #print ( mycursor.rowcount, "was inserted." )
    conn.close()

     
def updateKeyw(keyw="NA",id="NA") : 
    conn = connect()    
    cursor = conn.cursor()
     
    args = [keyw,id]
    args1=cursor.callproc('updatekeyw', args)
    print("Return value:", args1)
    #for result in cursor.stored_results():
     #       print(result.fetchall())
    cnt=cursor.rowcount 
    conn.commit()
    conn.close()
     

def enckeywords(docid=0) : 
    lst=[]
    conn = connect()    
    cursor = conn.cursor()
    #cursor.execute("select* from userprofile where userid='"+uid+"'")
    print("select keyw from keywords where docid="+str(docid))
    sql_select_query = "select keyw from keywords where docid="+str(docid)
    cursor.execute(sql_select_query)
    record = cursor.fetchall()
    #record = cursor.fetchall()
    final_result = [list(i) for i in record]
    print(final_result)
    lst=[]
    uid="na"
    pred="na"
    for row in final_result: 
        print("fiinal")
        updateKeyw(encrypKeyw(row[0],88),docid) 
        
    print(uid)
    print(lst)
    conn.close()

def insertClusters(lables) : 
    conn = connect()    
    mycursor = conn.cursor()
    docids=[]
    docids=getDocIds() 
    print(docids)
    print(len(lables))
    print(len(docids))
    #lables.append(str(inputlabel))
    print(lables)
    sql = "INSERT INTO clusters(cluster,docId) VALUES (%s, %s)"
    for i in range(len(lables)):
        
        if i==0: 
            a = ((lables[i],docids[i]),)
        else:
            a = a + ((lables[i],docids[i]),)
    mycursor.executemany ( sql, a )

    conn.commit ( )
    conn.close()

    #print ( mycursor.rowcount, "was inserted." )
    

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

 