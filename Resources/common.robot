*** Settings ***
Resource  index.robot

*** Variables ***
${url}  https://www.saucedemo.com/

*** Keywords ***
Open Browser To Login Page
    SeleniumLibrary.Create Webdriver    chrome    executable_path=/usr/local/share/chromedriver-mac-x64
    SeleniumLibrary.Go To    ${url}
    
Validate the message
    [Arguments]    ${locator}  ${InvalidLoginMessage}
    Wait Until Element Is Visible    ${locator}
    Element Text Should Be    ${locator}  ${InvalidLoginMessage}
