*** Settings ***
Resource    ../2-Variables/PassRecovery_Variables.robot

*** Keywords ***
Enter Phone Number
    [Arguments]    ${Phone}
    Input Text    ${Lo_Phone}    ${Phone}

Click Pass Recovery Button
    Click Element    ${Lo_PassRecoveryButton}

Check Error Message
    Wait Until Page Contains Element    ${Lo_Error_Message}    10s
    Page Should Contain Element    ${Lo_Error_Message}

Check Message Success
    ${message}    Get Text    ${Lo_Message_Success}
    Log To Console    Message: ${message}

Click Back to Login
    Click Element    ${Lo_BackToLogin}

Check Location After Back to Login
    ${Current_URL}    Get Location
    Should Be Equal As Strings    ${Current_URL}    ${URL_Login}

Clear Phone Number
    Press Keys    ${Lo_Phone}    CTRL+A    BACKSPACE