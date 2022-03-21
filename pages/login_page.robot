*** Settings ***
Resource                    ../frameworks/routers.robot

*** Variables ***
${field_username}               xpath=//android.widget.EditText[@text='Masukan email anda']
${field_password}               xpath=//android.widget.EditText[@text='Masukan password anda']
${button_masuk}                 xpath=//android.widget.TextView[@text='Masuk']/..

*** Keywords ***
user login using credentials
    [Arguments]     ${username}     ${password}
    user input username             ${username}
    user input password             ${password}
    user click button login

user input username
    [Arguments]     ${username}
    Wait Until Element Is Visible           ${field_username}
    Input Text                              ${field_username}       ${username}

user input password
    [Arguments]     ${password}
    Wait Until Element Is Visible           ${field_password}
    Input Password                          ${field_password}       ${password}

user click button login
    Wait Until Element Is Visible                           ${button_masuk}
    Click Element                                           ${button_masuk}