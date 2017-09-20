*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains  Back to search results
    Sleep    4s


Add to Cart
     Click Button   xpath=//*[@id="add-to-cart-button"]
     sleep    5s