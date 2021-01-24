*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/page_object_model/header.robot


*** Keywords ***

Verify contact form
    Verify contact button
    Select From List By Label   //select[@id = 'id_contact']   Customer service
    Select From List By Label   //select[@id = 'id_contact']   Webmaster
    Input Text      //input[@id = 'email']      dummyemail@yahoo.com
    Input Text      //input[@id = 'id_order']   789hgtop
    Input Text      //textarea[@id = 'message']     How do i return the products i bought
    Click Button    //button[@id = 'submitMessage']
    Page Should Contain     Your message has been successfully sent to our team

Negative test with wrong email
    Verify contact button
    Select From List By Label   //select[@id = 'id_contact']   Customer service
    Input Text      //input[@id = 'email']      wrongemail
    Input Text      //input[@id = 'id_order']   789hgtop
    Input Text      //textarea[@id = 'message']     How do i return the products i bought
    Click Button    //button[@id = 'submitMessage']
    Page Should Contain     Invalid email address.

Negative test with empty message
    Verify contact button
    Select From List By Label   //select[@id = 'id_contact']   Customer service
    Input Text      //input[@id = 'email']      ferantest@gmail.com
    Input Text      //input[@id = 'id_order']   789hgtop
    Click Button    //button[@id = 'submitMessage']
    Page Should Contain     The message cannot be blank.

Negative test with empty order number
    Verify contact button
    Select From List By Label   //select[@id = 'id_contact']   Customer service
    Select From List By Label   //select[@id = 'id_contact']   Webmaster
    Input Text      //input[@id = 'email']      dummyemail@yahoo.com
    Input Text      //textarea[@id = 'message']     How do i return the products i bought
    Click Button    //button[@id = 'submitMessage']
    Page Should Contain     Your message has been successfully sent to our team

Negative test with empty fields
    Verify contact button
    Click Button    //button[@id = 'submitMessage']
    Page Should Contain     Invalid email address.