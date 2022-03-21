*** Settings ***
Resource                ../frameworks/routers.robot

*** Variables ***

*** Keywords ***
user open sicepat app
    Open Application	${HOST}
    ...                 platformName=${PLATFORM_NAME}
    ...                 deviceName=${DEVICE_NAME}
    ...                 appPackage=${APP_PACKAGE}
    ...                 appActivity=${APP_ACTIVITY}
    ...                 udid=${UDID}
    ...                 app=${APP}

swipe horizontal element to element
    [Arguments]     ${element1}     ${element2}     ${direction}

    ${element1_size} =       Get Element Size            ${element1}
    ${element1_location} =   Get Element Location        ${element1}
    ${element2_size} =       Get Element Size            ${element2}
    ${element2_location} =   Get Element Location        ${element2}

    IF  "${direction}" == "RIGHT"
        ${START_X} =    Evaluate        ${element1_location['x']} + (${element1_size['width']} * 0.5)
        ${START_Y} =    Evaluate        ${element1_location['y']} + (${element1_size['height']} * 0.5)
        ${END_X} =      Evaluate        ${element2_location['x']} + (${element2_size['width']} * 1)
        ${END_Y} =      Evaluate        ${element1_location['y']} + (${element1_size['height']} * 0.5)
    ELSE IF  "${direction}" == "LEFT"
        ${START_X} =    Evaluate        ${element1_location['x']} + (${element1_size['width']} * 0.5)
        ${START_Y} =    Evaluate        ${element1_location['y']} + (${element1_size['height']} * 0.5)
        ${END_X} =      Evaluate        ${element2_location['x']} + (${element2_size['width']} * 0.1)
        ${END_Y} =      Evaluate        ${element1_location['y']} + (${element1_size['height']} * 0.5)
    END

    Swipe               ${START_X}    ${START_Y}  ${END_X}  ${END_Y}  1000