*** Settings ***
Library                                 SeleniumLibrary
Resource                                C:/Development/Juan's Exercise - GH/Exercise1/Dictionaries.robot

*** Keywords ***
Login with Valid Credentials
     [Arguments]                     ${Username}       ${Password}
     Fill "Username" Field           ${Username}
     Fill "Password" Field           ${Password}
     Click "Submit" Button

Login with Invalid Credentials
     [Arguments]                     ${Username}       ${Password}
     Fill "Username" Field           ${Username}
     Fill "Password" Field           ${Password}
     Click "Submit" Button

Fill "Username" Field
     [Arguments]                     ${Username}
     input text                      ${LOGIN.LoginUsernameTextBox}      ${Username}

Fill "Password" Field
     [Arguments]                     ${Password}
     input text                      ${LOGIN.LoginPasswordTextBox}      ${Password}

Click "Submit" Button
     click button                    ${LOGIN.LoginButton}