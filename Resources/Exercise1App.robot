*** Settings ***
Library                                      OperatingSystem
Resource                                     ../Resources/PO/Home.robot
Resource                                     ../Resources/PO/LogIn.robot
Resource                                     ../Resources/PO/Products.robot
Resource                                     C:/Development/Juan's Exercise - GH/Exercise1/Dictionaries.robot
*** Keywords ***
Go to "Home" Page
     Home.Navigate to

*** Keywords ***
Begin Web Test
      Set selenium speed                     .2s
      Set selenium timeout                   7s

Go to e-commerce website
      Open browser                           about:blank       ${HOME.Browser}
      Exercise1App.Go to "Home" Page

Should be able to login
      LogIn.Login with Valid Credentials     ${LOGIN.LoginUsernameText}   ${LOGIN.LoginPasswordText}
      wait until page contains               Products

LogIn with invalid credentials
      [Documentation]    Example test case using data from CSV
      ${Data} =          OperatingSystem.get file            C:/Development/Juan's Exercise - GH/Exercise1/Data/Users.csv
      @{Values}=         Evaluate                            $Data.split(',')
      ${username} =      set variable                        ${Values}[2]
      ${password} =      set variable                        ${Values}[3]
      input text         ${LOGIN.LoginUsernameTextBox}       ${username}
      input password     ${LOGIN.LoginPasswordTextBox}       ${password}
      Click "Submit" Button

Should be able to Add products to cart
      Products.Add Product to Cart

Should be able to Remove products from cart
      Products.Remove Product from Cart

Should be able to check Cart
      Products.Check Cart

End Web Test
      sleep                                  3s
      close all browsers
