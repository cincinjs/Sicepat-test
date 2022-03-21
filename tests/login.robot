*** Settings ***
Resource                ../frameworks/routers.robot

Test Timeout            ${DEFAULT_TEST_TIMEOUT}
Test Setup              user open sicepat app
Test Teardown           Close Application

*** Test Cases ***
[LOGIN_01] Login Using Valid Credentials
    Given user input username           ${username}
    And user input password             ${password}
    And user click button login
    When user swipe button to right
    Then user can see hello world message
    When user click button OK
    Then user cannot see hello world message
