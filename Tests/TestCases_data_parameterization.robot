*** Settings ***
Resource         ./../Resources/index.robot
Test Setup       Open Browser To Login Page
Test Teardown    Close Browser
Test Template    Validate Unsuccessful Login

*** Test Cases ***    username    password    message
Invalid Password    ${ValidEmail}    ${InvalidPassword}    ${InvalidPasswordMessage}
Locked Out User    ${LockedOutEmail}    ${ValidPassword}    ${LockedOutMessage}

*** Keywords ***
Validate Unsuccessful Login
    [Arguments]    ${email}    ${password}    ${message}    
    Fill the login form    ${email}    ${password}
    Validate the message    ${validationMessage}    ${message}