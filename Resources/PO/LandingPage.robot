*** Settings ***
Library  Selenium2Library

*** Variables ***


*** Keywords ***
Load
    Go To  ${START_URL}
    sleep   4s


Verify Page Loaded
    Wait Until Page Contains  Today's Deals
