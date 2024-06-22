*** Settings ***
Library  SeleniumLibrary
Resource  ../resources/locators.robot

*** Keywords ***
Fill Purchase Form
    [Arguments]  ${name}  ${address}  ${city}  ${state}  ${zip}  ${card_type}  ${card_number}  ${month}  ${year}  ${name_on_card}
    Input Text  ${NAME_INPUT}  ${name}
    Input Text  ${ADDRESS_INPUT}  ${address}
    Input Text  ${CITY_INPUT}  ${city}
    Input Text  ${STATE_INPUT}  ${state}
    Input Text  ${ZIPCODE_INPUT}  ${zip}
    Select From List By Value  ${CARD_TYPE_DROPDOWN}  ${card_type}
    Input Text  ${CREDIT_CARD_NUMBER_INPUT}  ${card_number}
    Input Text  ${MONTH_INPUT}  ${month}
    Input Text  ${YEAR_INPUT}  ${year}
    Input Text  ${NAME_ON_CARD_INPUT}  ${name_on_card}
    Click Button  ${PURCHASE_FLIGHT_BUTTON}