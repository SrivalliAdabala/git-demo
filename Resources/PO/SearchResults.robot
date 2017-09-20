*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Search Completed
    [Arguments]  ${SearchTerm}
    Wait Until Page Contains  ${SearchTerm}
    sleep   5s


Verify Product Count
    [Arguments]  ${ExpectedProductCount}
    xpath should match x times  //li[contains(@id, "result_")]  ${ExpectedProductCount}


Click Product Link
    [Documentation]  Clicks on the first product in the search results list
    Click Link  css=#result_0 a.s-access-detail-page
    sleep   5s