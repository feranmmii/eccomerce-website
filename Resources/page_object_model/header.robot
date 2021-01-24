*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Banner should be present
    Page Should Contain Element     //*[@id="header"]/div[1]/div/div/a/img
    Click Element   //*[@id="header"]/div[1]/div/div/a/img
    Location Should be  http://automationpractice.com/index.php

Verify mobile number
    Page Should Contain     Call us now: 0123-456-789

Verify contact button
    Click Element   //div[@id='contact-link']
    Location Should be   http://automationpractice.com/index.php?controller=contact