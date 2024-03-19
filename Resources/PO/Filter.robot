*** Settings ***
Library                              SeleniumLibrary
Resource                             C:/Development/Juan's Exercise/Exercise1/Dictionaries.robot

*** Keywords ***
Sort Items by Increasing Price
    click element                    ${FILTER.Element}
    select from list by value        ${FILTER.Element}           ${FILTER.List_Value}