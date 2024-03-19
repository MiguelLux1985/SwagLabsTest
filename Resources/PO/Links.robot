*** Settings ***
Library                              SeleniumLibrary
Resource                             C:/Development/Juan's Exercise/Exercise1/Dictionaries.robot
*** Keywords ***

click on Twitter link
   click element                     ${LINKS.Footer}
   click element                     ${LINKS.TwitterLink}
   sleep                             5s

click on Facebook link
   click element                     ${LINKS.Footer}
   click element                     ${LINKS.FacebookLink}
   sleep                             5s

click on LinkedIn link
   click element                     ${LINKS.Footer}
   click element                     ${LINKS.LinkedInLink}
   sleep                             5s