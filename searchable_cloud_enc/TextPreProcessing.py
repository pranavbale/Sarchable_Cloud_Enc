# remove additional space from string 
# Using re.sub() 
import re 

def removeSpaces(test_str='NA') : 
    bad_chars = [';', ':', '!', "*","\\","/","\'"]
    
    # printing original string  
    #print("The original string is : " + test_str) 
    #test_str = ''.join((filter(lambda i: i not in bad_chars, test_str)))
    #test_str = ''.join(i for i in test_str if not i in bad_chars)
    # using re.sub() 
    # remove additional space from string  
    test_str=test_str.replace("\\n", "")
    
    res = re.sub(' +', ' ', test_str) 
    res = re.sub('[!,*)@#%(&$_?.^''\\''/'']'']', '', res)
    res=res.replace("\\n","") 
    res=res.replace("\\xef","")
    res=res.replace("\\xe2","") 
    res=res.replace("\\xbf","")
    res=res.replace("\\x80","")
    res=res.replace("\\x9","") 
    res=res.replace("\\x99","") 
    res=res.replace("\\xbd","") 
    res=res.replace("\\t","")
    res=res.replace("\ '","") 
    res=res.replace("\\ '","") 
    res=res.replace("\\'","") 
    # printing result  
    #print("The strings after extra space removal : " + str(res)) 
    return str(res)