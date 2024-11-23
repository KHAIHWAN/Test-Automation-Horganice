*** Settings ***
Resource        ../2-Variables/0_Common_Variables.robot

*** Variables ***
${FirstName}           ทดสอบ
${LastName}            นามสกุลทดสอบ
${Email}               Test@email.com
${Phone}               0612345678
${Password}            Test9876543!
${ConfirmPassword}     Test9876543!

${Invalid_Password}     Test9876!
${Invalid_Email}        Testemail.com

${Register_Error_Message}    กรุณากรอกรายละเอียดให้ครบ

### Location Elements ###
${Lo_FirstName}        id=firstName
${Lo_LastName}         id=lastName
${Lo_Email}            id=signup_email
${Lo_Phone}            id=signup_tel
${Lo_Password}         id=signup_password
${Lo_ConfirmPassword}  id=confirmPassword
${Lo_RegisterButton}   tag=button
${Lo_Error_Message}    class=v-snack__content
${Lo_BackToLogin}      //*[@id="app"]/div/main/div/div/div/a