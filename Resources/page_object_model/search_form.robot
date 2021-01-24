*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify search input
    [Arguments]  ${item}=dress
    Input Text  //input[@id = 'search_query_top']   ${item}
    Click Button    //button[@name = 'submit_search']
    Page Should Contain     ${item}

Verify search input with enter button
    [Arguments]  ${item}
    Input Text  //input[@id = 'search_query_top']   ${item}
    Press Keys  //button[@name = 'submit_search']   [Return]
    Page Should Contain     ${item}

Negative search input
    [Arguments]  ${item}
    Input Text  //input[@id = 'search_query_top']   ${item}
    Press Keys  //button[@name = 'submit_search']   [Return]
    Page Should Contain     No results were found for your search
