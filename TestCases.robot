*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/common.robot
Resource  ../Resources/operation.robot


# Initializing Tests
Suite Setup   Launch Firefox Browser
Test Setup       User logs in  ${Email}  ${Password}
Test Teardown    User logs out
Suite Teardown  Close Web Browser


*** Test Cases ***
Execute the user journey functionality
  Given User navigates to Home page 
  And User reads about the author info 
  Then User navigates to the Practice section 
  When User clicks on the Test Execptions link under practice section
  Then User adds the new row and verifies the message 
  And User navigates to the Courses section 
  And User navigates to the Blog section 
  And User navigates to the Contact section and reads the note from author