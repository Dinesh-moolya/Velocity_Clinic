*** Settings ***
Resource          index.robot


*** Variables ***

${ValidEmail} =    standard_user
${LockedOutEmail} =    locked_out_user
${ValidPassword} =    secret_sauce
${InvalidPassword} =    secret_sauce1
${InvalidLoginMessage} =    Epic sadface: Username and password do not match any user in this service
${LockedOutMessage} =    Epic sadface: Sorry, this user has been locked out.

#locators
${usernameField} =    name:user-name
${passwordField} =    name:password
${loginButton} =    name:login-button
${validationMessage} =    data:test:error


*** Keywords ***
Fill the login form
    [Arguments]    ${username}    ${password}
    Wait Until Element Is Visible    ${usernameField}
    Input Text    ${usernameField}    ${username}
    Input Password    ${passwordField}    ${password}
    Click Button        ${loginButton}