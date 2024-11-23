*** Settings ***
Resource        ../2-Variables/0_Common_Variables.robot
Resource        ../2-Variables/Register_Variables.robot

*** Keywords ***
Enter Register Information
    [Arguments]    ${FirstName}    ${LastName}    ${Email}    ${Phone}    ${Password}    ${ConfirmPassword}
    Input Text    ${Lo_FirstName}    ${FirstName}
    Input Text    ${Lo_LastName}    ${LastName}
    Input Text    ${Lo_Email}    ${Email}
    Input Text    ${Lo_Phone}    ${Phone}
    Input Text    ${Lo_Password}    ${Password}
    Input Text    ${Lo_ConfirmPassword}    ${ConfirmPassword}
    Click Element    ${Lo_RegisterButton}

Clear Register Form
    Press Keys    ${Lo_FirstName}    CTRL+A    BACKSPACE
    Press Keys    ${Lo_LastName}    CTRL+A    BACKSPACE
    Press Keys    ${Lo_Email}    CTRL+A    BACKSPACE
    Press Keys    ${Lo_Phone}    CTRL+A    BACKSPACE
    Press Keys    ${Lo_Password}    CTRL+A    BACKSPACE
    Press Keys    ${Lo_ConfirmPassword}    CTRL+A    BACKSPACE

Check Error Message
    ${error_message}    Get Text    ${Lo_Error_Message}
    Should Be Equal As Strings    ${error_message}    ${Register_Error_Message}

Check Location After Register
    [Arguments]    ${Expected_Location}
    IF    '${Expected_Location}' == 'Register'
        Wait Until Page Contains Element    ${Page_Register_Load_Success}    10s
    ELSE
        Log    Location is not correct
    END

Click Back to Login
    Click Element    ${Lo_BackToLogin}

Check Location After Back to Login
    ${Current_URL}    Get Location
    Should Be Equal As Strings    ${Current_URL}    ${URL_Login}
