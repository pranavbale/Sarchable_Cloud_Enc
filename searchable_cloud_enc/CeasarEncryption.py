import base64


def encrypKeyw(string, shift): 
    cipher = ''
    for char in string: 
        #print("char="+char)
        if char.isspace():
            cipher = cipher + char
        elif char.isdigit():
            c_new = (int(char) + shift) % 10
            cipher = cipher + str(c_new)       
        elif  char.isupper():
            cipher = cipher + chr((ord(char) + shift - 65) % 26 + 65)
        elif  char.islower():
            cipher = cipher + chr((ord(char) + shift - 97) % 26 + 97)  
        else:
            cipher += char
    return cipher

def decryptkeyw(string, shift): 
    cipher = ''
    for char in string: 
        if char.isspace():
            cipher = cipher + char
        elif char.isdigit():
            c_new = (int(char) - shift) % 10
            cipher = cipher + str(c_new)  
        elif  char.isupper():
            #cipher = cipher + chr((ord(char) + shift - 65) % 26 + 65)
            cipher = cipher + chr((ord(char) - shift - 65) % 26 + 65)
        elif  char.islower():
            cipher = cipher + chr((ord(char) - shift - 97) % 26 + 97)
        else:
            cipher += char
            
    
    return cipher
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