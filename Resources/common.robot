*** Settings ***
Resource  index.robot

*** Variables ***
${siteUrl}  https://www.saucedemo.com

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${siteUrl}

Validate the message
    [Arguments]    ${locator}  ${InvalidLoginMessage}
    Wait Until Element Is Visible    ${locator}
    Element Text Should Be    ${locator}  ${InvalidLoginMessage}

Verify the url
    [Arguments]   ${url}
    ${currentUrl} =   Get Location
    Should Be Equal As Strings   ${currentUrl}   ${url}