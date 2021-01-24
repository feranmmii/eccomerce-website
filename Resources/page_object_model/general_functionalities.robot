*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Start test
    Open Browser   http://automationpractice.com/index.php  chrome
    Maximize Browser Window


End test
    Close Browser

Go home
    Click Element   //div[@id = 'header_logo']