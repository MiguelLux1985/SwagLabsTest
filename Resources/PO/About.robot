*** Settings ***
Library                SeleniumLibrary
Resource               C:/Development/Juan's Exercise - GH/Exercise1/Dictionaries.robot
*** Keywords ***
Access About Section
    click button       ${ABOUT.SideButton}
    click link         ${ABOUT.About_Link}
