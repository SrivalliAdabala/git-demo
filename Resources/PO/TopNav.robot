*** Settings ***
Documentation  Amazon top navigation
Library  Selenium2Library

*** Variables ***
${TOPNAV_SEARCH_BAR} =      id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON} =   xpath=//*[@id="nav-search"]/form/div[2]/div/input

*** Keywords ***
Search for Products
    [Arguments]  ${SearchTerm}
    Enter Search Term  ${SearchTerm}
    sleep   5s
    Submit Search


Enter Search Term
    [Arguments]  ${SearchTerm}
    Input Text  ${TOPNAV_SEARCH_BAR}  ${SearchTerm}
    sleep   5s


Submit Search
    Click Button  ${TOPNAV_SEARCH_BUTTON}
