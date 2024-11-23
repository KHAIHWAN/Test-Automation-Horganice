*** Settings ***
Resource        ../2-Variables/0_Common_Variables.robot

*** Variables ***
${Username}     test001
${Password}     test4321!

${Invalid_Username}     0987654321
${Invalid_Password}     invalid_password234

${Login_Error_Message}     ชื่อผู้ใช้งานหรือรหัสผ่านไม่ถูกต้อง

### Location Elements ###

${Lo_Username}     id=Username
${Lo_Password}     id=Password
${Lo_Login}        tag=button
${Lo_Error_Message}     class=v-snack__content