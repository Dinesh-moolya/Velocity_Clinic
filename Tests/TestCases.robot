*** Settings ***
Resource  ../Resources/index.robot
Test Setup  Open Browser To Login Page
Test Teardown  Close Browser

*** Test Cases ***
Validate Unsuccessful Login
    [Documentation]  Validate unsuccessful login
    [Tags]  negativeflow    login
    Fill the login form    ${ValidEmail}    ${InvalidPassword}
    Validate the message    data:test:error    ${InvalidLoginMessage}