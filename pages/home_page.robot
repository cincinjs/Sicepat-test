*** Settings ***
Resource                   ../frameworks/routers.robot

*** Variables ***
${text_hai_email}      accessibility_id=customText
${button_ok}           id=android:id/button1
${text_message}        id=android:id/alertTitle

*** Keywords ***
user can see hello world message
    Wait Until Element Is Visible           ${text_message}
    ELement Should Contain Text             ${text_message}         Hello world!

user click button OK
    Wait Until Element Is Visible           ${button_ok}
    Click Element                           ${button_ok}

user cannot see hello world message
    Wait Until Element Is Visible           ${text_hai_email}
    Element Should Be Visible               ${text_hai_email}
