import mysql.connector as mycon

def connect() : 
    con=mycon.connect(host='#',user='#',password='#',database='#') # need to fillup the things 
    return con
def getStates():
    conn = connect()
    #integrated security 
    cursor = conn.cursor() 
    cursor.execute('select state from statemaster;')
    data=cursor.fetchall()
    return data