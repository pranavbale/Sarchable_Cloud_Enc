import smtplib
def sendotp(otp="NA",email="NA"):
    body = 'Subject: One time password.\n \n\n' + 'Dear User, your one time password is ' + otp
    try:
        smtpObj = smtplib.SMTP('smtp-mail.outlook.com', 587)
    except Exception as e:
        print(e)
        smtpObj = smtplib.SMTP_SSL('smtp-mail.outlook.com', 465)
    #type(smtpObj) 
    smtpObj.ehlo()
    smtpObj.starttls()
    smtpObj.login('mail', "password")  # need to add a outlook email and password
    smtpObj.sendmail('mail', email, body) # Or recipient@outlook

    smtpObj.quit()
    pass
