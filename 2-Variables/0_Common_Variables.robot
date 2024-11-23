*** Settings ***
Resource        ../1-Resources/Resources.robot

*** Variables ***
${Browser}       Chrome
${Base_URL}      https://market-uat.hawks.in.th/auth/
${URL_Login}      ${Base_URL}login
${URL_Register}      ${Base_URL}signup
${URL_Password_Recovery}      ${Base_URL}password-recovery

${Page_Login_Load_Success}     class=text-center
${Page_Register_Load_Success}     class=text-center
${Page_Password_Recovery_Load_Success}     class=text-blue-800


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${URL_Login}    ${Browser}
    Wait Until Page Contains Element    ${Page_Login_Load_Success}    10s
    Set Selenium Speed    0.1s
    Maximize Browser Window

Open Browser To Register Page
    Open Browser    ${URL_Register}    ${Browser}
    Wait Until Page Contains Element    ${Page_Register_Load_Success}    10s
    Set Selenium Speed    0.1s
    Maximize Browser Window

Open Browser To Password Recovery Page
    Open Browser    ${URL_Password_Recovery}    ${Browser}
    Wait Until Page Contains Element    ${Page_Password_Recovery_Load_Success}    10s
    Set Selenium Speed    0.1s
    Maximize Browser Window