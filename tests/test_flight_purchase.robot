*** Settings ***
Library           SeleniumLibrary
Resource          ../pages/home_page.robot
Resource          ../pages/reserve_page.robot
Resource          ../pages/purchase_page.robot
Resource          ../pages/confirmation_page.robot
Resource          ../resources/variables.robot
Test Teardown     Close Browser

*** Test Cases ***
Flight Purchase Test
    [Documentation]    Test the flight purchase flow with different customer data
    [Template]         Flight Purchase Template
    @{CUSTOMERS}

*** Keywords ***
Flight Purchase Template
    [Arguments]    ${customer}
    [Documentation]    Template for flight purchase flow
    Open BlazeDemo Home Page
    Capture Page Screenshot
    Select Flight    ${customer['city']}  ${customer['city']}
    Capture Page Screenshot
    Select First Flight
    Capture Page Screenshot
    Fill Purchase Form    ${customer['name']}  ${customer['address']}  ${customer['city']}  ${customer['state']}  ${customer['zip']}  ${customer['card_type']}  ${customer['card_number']}  ${customer['month']}  ${customer['year']}  ${customer['name_on_card']}
    Capture Page Screenshot
    Verify Confirmation
    Capture Page Screenshot