*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/locators.robot
Resource  ../resources/variables.robot

*** Keywords ***
Open BlazeDemo Home Page
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window

Select Flight
    [Arguments]  ${from_city}  ${to_city}
    Select From List By Value  ${DEPARTURE_CITY_DROPDOWN}  ${from_city}
    Select From List By Value  ${DESTINATION_CITY_DROPDOWN}  ${to_city}
    Click Button  ${FIND_FLIGHTS_BUTTON}