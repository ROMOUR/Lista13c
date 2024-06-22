*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/locators.robot

*** Keywords ***
Verify Confirmation
    Wait Until Page Contains  Thank you for your purchase today!
    Capture Page Screenshot