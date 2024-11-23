*** Settings ***
Resource        ../3-Keywords/Login_Keywords.robot

Suite Setup     Open Browser To Login Page
Suite Teardown  SeleniumLibrary.Close Browser

Test Setup      Clear Username and Password

*** Test Cases ***
TC-F2-001:
    [Documentation]    กรณี ไม่กรอกข้อมูลเลย
    Enter Username and Password    ${EMPTY}    ${EMPTY}
    Check Error Message
    Check Location After Login    Login

TC-F2-002:
    [Documentation]    กรณี กรอกข้อมูลแค่ เบอร์โทรศัพท์ ที่ไม่มีในระบบ
    Enter Username and Password    ${Invalid_Username}    ${EMPTY}
    Check Error Message
    Check Location After Login    Login

TC-F2-003:
    [Documentation]    กรณี กรอกข้อมูลแค่ รหัสผ่าน ที่ไม่มีในระบบ
    Enter Username and Password    ${EMPTY}    ${Invalid_Password}
    Check Error Message
    Check Location After Login    Login

TC-F2-004:
    [Documentation]    กรณี กรอกข้อมูล เบอร์โทรศัพท์, รหัสผ่าน ที่ไม่มีในระบบ
    Enter Username and Password    ${Invalid_Username}    ${Invalid_Password}
    Check Error Message
    Check Location After Login    Login

TC-F2-005:
    [Documentation]    กรณี กรอกข้อมูลแค่ เบอร์โทรศัพท์ 
    Enter Username and Password    ${Username}    ${EMPTY}
    Check Error Message
    Check Location After Login    Login

TC-F2-006:
    [Documentation]    กรณี กรอกข้อมูลแค่ รหัสผ่าน
    Enter Username and Password    ${EMPTY}    ${Password}
    Check Error Message
    Check Location After Login    Login

TC-F2-007:
    [Documentation]    กรณี กรอกข้อมูล เบอร์โทรศัพท์, รหัสผ่าน
    Enter Username and Password    ${Username}    ${Password}
    Check Location After Login    Home