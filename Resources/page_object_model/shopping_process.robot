*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Select item
    Mouse Over  //ul[@id ='homefeatured']/li[2]/div/div[@class='left-block']/div
    Click Element   //ul[@id ='homefeatured']/li[2]/div/div[@class='left-block']/div/a[@class = 'quick-view']
    Page Should Contain     Faded Short Sleeve T-shirts

Add to cart
    [Arguments]  ${value}

    Select Frame    //iframe[@class="fancybox-iframe"]
    FOR  ${elem}  IN RANGE  ${value}
        Click Link   //a[@class = 'btn btn-default button-plus product_quantity_up']
    END

    ${value} =  Evaluate    ${value} + 1
    ${fieldValue} =  Get Value   //input[@id = 'quantity_wanted']
    Should Be Equal As Strings  ${value}    ${fieldValue}

Make purchase
    Click Element   //button[@name="Submit"]
    Page Should Contain  Product successfully added to your shopping cart
    Wait Until Element Is Enabled   //a[@title = 'Proceed to checkout']  5
    Click Element   //a[@title = 'Proceed to checkout']
    Click Element   //*[@id="center_column"]/p[2]/a[1]







