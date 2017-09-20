*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Cart subtotal
    sleep    4s


Proceed to Checkout
    Click Link   xpath=//*[@id='hlb-ptc-btn-native']
    sleep    4s