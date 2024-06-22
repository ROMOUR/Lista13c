*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/locators.robot

*** Keywords ***
Select First Flight
    Click Button  ${CHOOSE_THIS_FLIGHT_BUTTON}