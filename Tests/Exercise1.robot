*** Settings ***
Library                      SeleniumLibrary
Resource                     ../Resources/PO/Home.robot
Resource                     ../Resources/PO/LogIn.robot
Resource                     ../Resources/PO/Products.robot
Resource                     ../Resources/PO/LogOut.robot
Resource                     ../Resources/PO/About.robot
Resource                     ../Resources/PO/Filter.robot
Resource                     ../Resources/PO/Links.robot
Resource                     ../Resources/Exercise1App.robot
Test Setup                   Begin Web Test
Test Teardown                End Web Test

#run the script
#robot -d results Tests/Exercise1.robot

*** Test Cases ***

Add and Remove Item from cart
     [Documentation]         Runs browser, Access e-commerce website, Adds product to basket and removes it.
     [Tags]                  1001         Functional
     Exercise1App.Go to e-commerce website
     Exercise1App.Should be able to login
     Exercise1App.Should be able to Add products to cart
     Products.Wait for 2 seconds
     Exercise1App.Should be able to Remove products from cart

Show Cart with Added items
     [Documentation]         Run browser, Access e-commerce website, Add product to basket and show content of cart.
     [Tags]                  1002         Functional
     Exercise1App.Go to e-commerce website
     Exercise1App.Should be able to login
     Exercise1App.Should be able to Add products to cart
     Products.Wait for 2 seconds
     Exercise1App.Should be able to check Cart

Checkout Items in Cart
     [Documentation]         Run browser, Access e-commerce website, Add product to basket, show basket and finalise the checkout process.
     [Tags]                  1003         Functional
     Exercise1App.Go to e-commerce website
     Exercise1App.Should be able to login
     Exercise1App.Should be able to Add products to cart
     Products.Wait for 2 seconds
     Exercise1App.Should be able to check Cart
     Products.Wait for 2 seconds
     Products.Should be able to Checkout
     Products.Wait for 2 seconds

Login with invalid credentials
     [Documentation]         Run browser, Access e-commerce website, fill username and password with invalid credentials. Display error message: 'Epic sadface: Username and password do not match any user in this service'
     [Tags]                  1004         Functianal        Component
     Exercise1App.Go to e-commerce website
     Exercise1App.LogIn with invalid credentials

Login with no credentials
     [Documentation]         Run browser, Access e-commerce website, click login without adding credentials. Display error message: 'Epic sadface: Username required'
     [Tags]                  1005         Functional        Component
     Exercise1App.Go to e-commerce website
     LogIn.Click "Submit" Button

Log Out from e-commerce site
     [Documentation]         Run browser, Access e-commerce website, Log in, open side menu, Log back out.
     [Tags]                  1006         Functional        Component
     Exercise1App.Go to e-commerce website
     Exercise1App.Should be able to login
     LogOut.Log Out from site

Delves into About Section
     [Documentation]         Run browser, Access e-commerce website, Log in, open side menu, click about section.
     [Tags]                  1007         Functional        Component
     Exercise1App.Go to e-commerce website
     Exercise1App.Should be able to login
     About.Access About Section

Filters items by lowest price first
     [Documentation]         Run browser, Access e-commerce website, Log in, click filter logo, sort by increasing price.
     [Tags]                  1008         Functional        Component
     Exercise1App.Go to e-commerce website
     Exercise1App.Should be able to login
     Filter.Sort Items by Increasing Price

Use Twitter link
     [Documentation]         Run browser, Access e-commerce website, Log in, click Twitter logo.
     [Tags]                  1009         Functional        Component
     Exercise1App.Go to e-commerce website
     Exercise1App.Should be able to login
     Links.click on Twitter link

Use Facebook link
     [Documentation]         Run browser, Access e-commerce website, Log in, click Facebook logo.
     [Tags]                  1010         Functional        Component
     Exercise1App.Go to e-commerce website
     Exercise1App.Should be able to login
     Links.click on Facebook link

Use LinkedIn link
     [Documentation]         Run browser, Access e-commerce website, Log in, click LinkedIn logo.
     [Tags]                  1011         Functional        Component
     Exercise1App.Go to e-commerce website
     Exercise1App.Should be able to login
     Links.click on LinkedIn link