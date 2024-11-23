*** Settings ***
Resource        ../2-Variables/0_Common_Variables.robot
Resource        ../2-Variables/Login_Variables.robot

*** Keywords ***
Enter Username and Password
    [Arguments]    ${username}    ${password}
    Input Text    ${Lo_Username}    ${username}
    Input Text    ${Lo_Password}    ${password}
    Click Button    ${Lo_Login}

Clear Username and Password
    Press Keys    ${Lo_Username}    CTRL+A    BACKSPACE
    Press Keys    ${Lo_Password}    CTRL+A    BACKSPACE

Check Error Message
    ${error_message}    Get Text    ${Lo_Error_Message}
    Should Be Equal As Strings    ${error_message}    ${Login_Error_Message}

Check Location After Login
    [Arguments]    ${Expected_Location}
    IF    '${Expected_Location}' == 'Login'
        Wait Until Page Contains Element    ${Page_Login_Load_Success}    10s
    ELSE
        Log    Location is not correct
    END
