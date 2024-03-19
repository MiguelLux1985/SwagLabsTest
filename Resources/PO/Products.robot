*** Settings ***
Library                                  SeleniumLibrary
Resource                                 C:/Development/Juan's Exercise/Exercise1/Dictionaries.robot

*** Keywords ***

Add Product to Cart
     Click Add to Cart Button

Wait for 2 seconds
     sleep                               2s

Remove Product from Cart
     Click Remove from Cart button

Click Add to Cart button
     click button                        ${PRODUCTS.Add_to_Cart}

Click Remove from Cart button
     click element                       ${PRODUCTS.RemoveFromCart}

Check Cart
     click element                       ${PRODUCTS.ShoppingCart}
     wait until page contains            Your Cart

Should be able to Checkout
     click button                        ${PRODUCTS.CheckoutButton}
     Fill Customer Fields
     click button                        ${PRODUCTS.ContinueButton}
     wait until page contains            Price Total
     sleep                               2s
     click button                        ${PRODUCTS.FinishButton}

Fill Customer Fields
     input text                          ${PRODUCTS.FirstName}            Michelangelo
     input text                          ${PRODUCTS.LastName}             Leonardo Raphael
     input text                          ${PRODUCTS.Postcode}             Donnatello
