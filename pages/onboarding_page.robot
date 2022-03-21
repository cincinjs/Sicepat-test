*** Settings ***
Resource                    ../frameworks/routers.robot

*** Variables ***
${field_swipe}              xpath=//android.widget.TextView[@text='Swipe to show Alert']/..
${button_swipe}             xpath=//android.widget.ImageView[@resource-id='fastImageComponent']

*** Keywords ***
user swipe button to right
    Wait Until Element Is Visible               ${field_swipe}
    swipe horizontal element to element         ${button_swipe}     ${field_swipe}      RIGHT