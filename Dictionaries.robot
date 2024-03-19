*** Settings ***
Library         SeleniumLibrary

*** Variables ***
&{ABOUT}        SideButton=xpath=//button[@id='react-burger-menu-btn']    About_Link=xpath=//a[@id='about_sidebar_link']

&{FILTER}       Element=class:product_sort_container    List_Value=lohi

&{HOME}         URL=https://www.saucedemo.com/    HomeHeaderLabel=Swag Labs    Browser=Chrome

&{LINKS}        Footer=class:footer    TwitterLink=xpath=/html/body/div/div/footer/ul/li[1]/a    FacebookLink=xpath=/html/body/div/div/footer/ul/li[2]/a    LinkedInLink=xpath=/html/body/div/div/footer/ul/li[3]/a

&{LOGIN}        LoginUsernameTextBox=xpath= //*[@id="user-name"]    LoginUsernameText=performance_glitch_user    LoginPasswordText=secret_sauce    LoginPasswordTextBox=id=password    LoginButton=id=login-button

&{LOGOUT}       SideButton=xpath=//button[@id='react-burger-menu-btn']    LogOutLink=xpath=//a[@id='logout_sidebar_link']

&{PRODUCTS}     RemoveFromCart=xpath=//button[@id='remove-sauce-labs-backpack']    Add_to_Cart=id=add-to-cart-sauce-labs-backpack   FirstName=id=first-name    LastName=id=last-name    Postcode=id=postal-code    ShoppingCart=class:shopping_cart_link    CheckoutButton=xpath=//button[@id='checkout']    ContinueButton=id=continue    FinishButton=id=finish

