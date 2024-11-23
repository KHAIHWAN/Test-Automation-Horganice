*** Settings ***
Resource        ../2-Variables/0_Common_Variables.robot

*** Variables ***
${PhoneNumber}               0612345678
${Invalid_Phone}       0812345678
${Less_Phone}          081234567
${More_Phone}          08123456789
${Text_Phone}          TEXT_TEST



### Location Elements ###
${Lo_Phone}            id=reset-tel
${Lo_Error_Message}    class=v-messages__message
${Lo_BackToLogin}      //*[@id="app"]/div/main/div/div/div/div[3]/a
${Lo_PassRecoveryButton}    tag=button

${Lo_Message_Success}    class=font-weight-lighter