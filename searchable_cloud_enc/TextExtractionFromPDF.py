# import parser object from tike 
from tika import parser   
import re
def docToText(path='NA') :  
# opening pdf file 
    parsed_pdf = parser.from_file(path) 
    #parsed_pdf=parsed_pdf.encode("utf-8")
    # saving content of pdf 
    # you can also bring text only, by parsed_pdf['text']  
    # parsed_pdf['content'] returns string  
    data = parsed_pdf['content']  
    # convert it to utf-8 
    data = data.encode('utf-8', errors='ignore')
    # Printing of content  
    print(data) 
    
    res = re.sub(pattern=r'(.+?)(?:\r\n|\n)(.+[.!?]+[\s|$])', repl='\g<1>\g<2>', string=str(data), flags=re.MULTILINE)

    res = re.sub('[!,*)@#%(&$_?.^''\\''/'']'']', '', str(data))
    res=res.replace("\\n","") 
    res=res.replace("\\xef","") 
    res=res.replace("\\xbf","") 
    res=res.replace("\\xbd","") 
    res=res.replace("\\t","")
    res=res.replace("\ '","") 
    res=res.replace("\\ '","") 
    res=res.replace("\\'","") 
    # <class 'str'> 
    print(type(res))
    return res.strip()

def extractPDF() :
    # opening pdf file 
    parsed_pdf = parser.from_file("E:\\11.pdf") 
    
    # saving content of pdf 
    # you can also bring text only, by parsed_pdf['text']  
    # parsed_pdf['content'] returns string  
    data = parsed_pdf['content']  
    
    # Printing of content  
    print(data) 
    
    # <class 'str'> 
    print(type(data))
    return data
