*** Settings ***
Resource  index.robot

*** Variables ***
${url}  https://www.saucedemo.com/

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${url}    chrome    executable_path=/usr/local/share/chromedriver-mac-x64

Validate the message
    [Arguments]    ${locator}  ${InvalidLoginMessage}
    Wait Until Element Is Visible    ${locator}
    Element Text Should Be    ${locator}  ${InvalidLoginMessage}
