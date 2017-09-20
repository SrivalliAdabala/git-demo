*** Settings ***
Library  Selenium2Library

*** Variables ***
${SIGNIN_MAIN_HEADING}    xpath=//*[@id='a-page']/div[1]/div[3]/div/div/form/div/div/div/h1

*** Keywords ***
Verify Page Loaded
    Page Should Contain Element     ${SIGNIN_MAIN_HEADING}
    sleep   5s
    Element Text Should Be          ${SIGNIN_MAIN_HEADING}  Sign in
    sleep  5s

Login With Valid Credentials
    [Arguments]  ${Username}  ${Password}
    Fill "Email" Field  ${Username}
    Fill "Password" Field  ${Password}
    Click "Sign In" Button

Fill "Email" Field
    [Arguments]  ${Username}
    Log  Filling Email field with ${Username}
    sleep  2s


Fill "Password" Field
    [Arguments]  ${Password}
    Log  Filling Password field with ${Password}
    sleep   2s


Click "Sign In" Button
    Log  Clicking submit button