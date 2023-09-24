*** Settings ***
Library  SeleniumLibrary


*** Variables *** 
${BROWSER}  firefox
${Browser_Directory}  /Users/mac/Desktop/Velocity_Clinic-main/Resources/geckodriver
${URL}  https://practicetestautomation.com/practice-test-login/
${Logout_URL}  https://practicetestautomation.com/logged-in-successfully/
${Heading}  //h2[normalize-space()='Test login']
${Email}  //input[@name="username"]
${Password}  //input[@name="password"]
${Email_ID}  student
${User_Password}  Password123
${Submit}  //button[@id='submit']
${Login_Heading}  //h1[@class='post-title']
${Logout}  //a[@class='wp-block-button__link has-text-color has-background has-very-dark-gray-background-color']
${Home_tab}  //a[normalize-space()='Home']
${Home_Heading}  //img[@alt='Dmitry Shyshkin, your Selenium WebDriver instructor']
${Home_Text}  //strong[normalize-space()='Welcome to Practice Test Automation!']
${Practice_tab}  //a[normalize-space()='Practice']
${Test_Execution}  //a[normalize-space()='Test Exceptions']
${Edit}  //button[@id='edit_btn']
${Text}  //input[@type='text']
${Food}  Briyani
${Save}  //button[@id='save_btn']  
${Confirm_message}  //div[@id='confirmation']
${Course_tab}  //a[normalize-space()='Courses']
${Blog_tab}  //a[normalize-space()='Blog']
${Contact_tab}  //a[normalize-space()='Contact']
${Thankyou_content}  //p[contains(text(),'If you have questions, suggestions, or business pr')]

 
*** Keywords ***

Launch Chrome Browser
    # ${chrome options} =     Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # Call Method    ${chrome options}   add_argument    headless
    # Call Method    ${chrome options}   add_argument    disable-gpu
    # Create Webdriver    Chrome  executable_path=${Browser_Directory}  chrome_options=${chrome options}
    Create Webdriver  Firefox  executable_path=${Browser_Directory}  
    Maximize Browser Window

Launch Firefox Browser
    Create Webdriver  Firefox  executable_path=${Browser_Directory}  
    Maximize Browser Window

User logs in 
  [Arguments]  ${Email}  ${Password} 
   Go To  ${URL} 
   Wait until page contains element  ${Heading}  timeout=10s 
   Wait until page contains element  ${Email}  timeout=10s 
   Click Element  ${Email}
   Input Text  ${Email}  ${EMAIL_ID}
   Click Element  ${Password}
   Input Text  ${Password}  ${User_Password} 
   Click Element  ${Submit}
   Wait Until Page Contains Element  ${Login_Heading}
   ${present} =  Run Keyword And Return Status  Element Should Be Visible  ${Login_Heading}
   Run Keyword If  ${present}  Notify user about Login status

User logs out
   Go To  ${Logout_URL}
   Wait Until Page Contains Element  ${Logout}  10s
   Click Element  ${Logout} 

Close Web Browser
   Close Browser
