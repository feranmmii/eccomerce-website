*** Settings ***
Documentation  Automation testing of Ecommerce website
Library  SeleniumLibrary
Resource     ../Resources/page_object_model/general_functionalities.robot
Resource    ../Resources/page_object_model/header.robot
Resource    ../Resources/page_object_model/contact_form.robot
Resource    ../Resources/page_object_model/search_form.robot
Resource    ../Resources/page_object_model/shopping_process.robot



Suite Setup  Start test
#Suite Teardown  End test


*** Test Cases ***
TC01
    [Tags]  Banners
    Banner should be present
    Verify mobile number
TC02
    [Tags]  Banners
    Verify contact button
TC03
    [Tags]  ContactForm
    Verify contact form
TC04
    [Tags]  NegativeFormTest
    Negative test with wrong email
    Negative test with empty message
    Negative test with empty order number
    Negative test with empty fields

TC05
    [Tags]  SearchFunction
    [Setup]  Go home
    Verify search input     shoe

TC06
    [Tags]  SearchFunction
    [Setup]  Go home
    Verify search input with enter button     Gown

TC07
    [Tags]  SearchFunction
    [Setup]  Go home
    Negative search input   cat fish

TC08
    [Tags]  MakePurchase
    [Setup]  Go home
    Select item
    sleep  5
    Add to cart     5
    Make Purchase





