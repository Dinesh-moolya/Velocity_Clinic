*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
User searches for the new course
  Sleep  10s
  Wait until page contains element  ${Search}  timeout=10s
  Click Eelement  ${Search}
  Input Text  ${Search}  ${Search_text}
  Sleep  5s


Notify user about Login status
  Log to Console  "Logged in successfully"
  
User navigates to Home page 
  Wait until page contains element  ${Home_tab}  timeout=10s
  Click Element  ${Home_tab}
  Wait until page contains element  ${Home_Heading}  timeout=10s

User reads about the author info 
  ${Value}=  Get Text  ${Home_Text}
  Log to Console  ${\n}${Value}

User navigates to the Practice section 
  Wait until page contains element  ${Practice_tab}  timeout=10s
  Click Element  ${Practice_tab}

User clicks on the Test Execptions link under practice section
  Wait until page contains element  ${Test_Execution}  timeout=5s
  Click Element  ${Test_Execution}
  Wait until page contains element  ${Edit}  timeout=5s
  Click Element  ${Edit}
  Click Element  ${Text}
  Press Keys  None    CTRL+a+BACKSPACE
  Input Text  ${Text}  ${Food}
  Click Element  ${Save}

User adds the new row and verifies the message 
  ${Value}=  Get Text  ${Confirm_message}
  Log to Console  ${\n}${Value}

User navigates to the Courses section 
  Wait until page contains element  ${Course_tab}  timeout=10s
  Click Element  ${Course_tab}

User navigates to the Blog section 
  Wait until page contains element  ${Blog_tab}  timeout=30s
  Click Element  ${Blog_tab}

User navigates to the Contact section and reads the note from author
  Wait until page contains element  ${Contact_tab}  timeout=20s
  Click Element  ${Contact_tab}
  ${Value}=  Get Text  ${Thankyou_content}
  Log to Console  ${\n}${Value}