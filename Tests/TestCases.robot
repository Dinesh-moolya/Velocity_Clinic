*** Settings ***
Resource         ./../Resources/index.robot
Test Setup       Open Browser To Login Page
Test Teardown    Close Browser

*** Test Cases ***
Validate Unsuccessful Login
    [Documentation]  Validate unsuccessful login
    [Tags]  negativeflow    login
    Fill the login form    ${ValidEmail}    ${InvalidPassword}
    Validate the message    ${validationMessage}    ${InvalidPasswordMessage}

Validate Successful Login
    [Documentation]  Validate successful login
    [Tags]  positiveflow    login
    Fill the login form    ${ValidEmail}    ${ValidPassword}
    Verify the url    ${siteUrl}/inventory.html