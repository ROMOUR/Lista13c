*** Settings ***
Library           SeleniumLibrary
Resource          ../pages/home_page.robot
Resource          ../pages/reserve_page.robot
Resource          ../pages/purchase_page.robot
Resource          ../pages/confirmation_page.robot
Resource          ../resources/variables.robot
Test Teardown     Close Browser
Test Template     Flight Purchase Template

*** Test Cases ***
Successful Flight from San Diego to New York    &{CUSTOMERS}[0]
Successful Flight from Boston to London         &{CUSTOMERS}[1]
Successful Flight from Portland to Dublin       &{CUSTOMERS}[2]

*** Keywords ***
Flight Purchase Template
    [Arguments]    &{customer}
    [Documentation]    Template for flight purchase flow
    Open BlazeDemo Home Page
    Capture Page Screenshot
    Select Flight    ${customer}[dep_city]    ${customer}[dest_city]
    Capture Page Screenshot
    Select First Flight
    Capture Page Screenshot
    Fill Purchase Form    ${customer}[name]    ${customer}[address]    ${customer}[dep_city]    ${customer}[state]    ${customer}[zip]    ${customer}[card_type]    ${customer}[card_number]    ${customer}[month]    ${customer}[year]    ${customer}[name_on_card]
    Capture Page Screenshot
    Verify Confirmation
    Capture Page Screenshot

Open BlazeDemo Home Page
    Open Browser    ${URL}    ${BROWSER}