*** Settings ***
Resource    ../3-Keywords/PassRecovery_Keywords.robot

Suite Setup    Open Browser To Password Recovery Page
Suite Teardown    Close Browser

Test Setup    Clear Phone Number

*** Test Cases ***
TC-F3-001:
    [Documentation]    กรณี ไม่กรอกเบอร์โทรศัพท์
    Enter Phone Number    ${Empty}
    Click Pass Recovery Button
    Check Error Message

TC-F3-002:
    [Documentation]    กรณี กรอกเบอร์โทรศัพท์น้อยกว่า 10 หลัก
    Enter Phone Number    ${Less_Phone}
    Click Pass Recovery Button
    Check Error Message

TC-F3-003:
    [Documentation]    กรณี กรอกเบอร์โทรศัพท์มากกว่า 10 หลัก
    Enter Phone Number    ${More_Phone}
    Click Pass Recovery Button

TC-F3-004:
    [Documentation]    กรณี กรอกเบอร์โทรศัพท์ที่ไม่มีอยู่ในระบบ
    Enter Phone Number    ${Invalid_Phone}
    Click Pass Recovery Button
    Check Message Success

TC-F3-005:
    [Documentation]    กรณี กรอกเบอร์โทรศัพท์ที่มีอยู่ในระบบ
    Enter Phone Number    ${PhoneNumber}
    Click Pass Recovery Button
    Check Message Success

TC-F3-006:
    [Documentation]    กรณี กรอกตัวอักษร
    Enter Phone Number    ${Text_Phone}
    Click Pass Recovery Button

TC-F3-007:
    [Documentation]    กรณี กดปุ่ม หากคุณมีชื่อผู้ใช้และรหัสผ่านอยู่แล้ว? 'เข้าสู่ระบบ'
    Click Back to Login
    Check Location After Back to Login
