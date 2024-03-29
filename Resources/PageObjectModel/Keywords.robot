*** Settings ***
Library    SeleniumLibrary
Resource    ../../Data/Data.robot

*** Keywords ***
launch of landing page
    open browser    ${url}     ${BROWSER}


User Maximises Browser
    maximize browser window

User Verifies Site Loads
    wait until page contains    Swag Labs    8s

User Enters Valid Username & Password
    input text  user-name   standard_user
    input text  password    secret_sauce


User Clicks log in button
    click button    login-button

User Verifies SauceDemo Homepage
    wait until page contains    Products

User adds product to cart
    click button  add-to-cart-sauce-labs-backpack
Verify product in cart
    click link  //a[@class='shopping_cart_link']
    wait until page contains  Your Cart
    wait until element is visible  //div[@class='inventory_item_name']
    close browser

User enters Invalid Username & Password
    input text  user-name   standard
    input text  password    secret_

user verifies error message exists for invalid log in
    wait until page contains    Epic sadface: Username and password do not match any user in this service

close browser after execution
    close all browsers

