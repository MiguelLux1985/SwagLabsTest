*** Settings ***
Library                 SeleniumLibrary
Resource                C:/Development/Juan's Exercise/Exercise1/Dictionaries.robot

*** Keywords ***
Log Out from site
     click button       ${LOGOUT.SideButton}
     click link         ${LOGOUT.LogOutLink}