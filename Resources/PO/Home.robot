*** Settings ***
Library                             SeleniumLibrary
Resource                            C:/Development/Juan's Exercise - GH/Exercise1/Dictionaries.robot

*** Keywords ***
Navigate to
    go to                           ${HOME.URL}

Verify Page Loaded
    wait until page contains        ${HOME.HomeHeaderLabel}