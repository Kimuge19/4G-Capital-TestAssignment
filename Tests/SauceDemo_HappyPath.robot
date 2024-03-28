*** Settings ***
Library    SeleniumLibrary
Resource  ../Resources/PageObjectModel/Keywords.robot

#Suite Setup     Insert Testing Data
#Test Setup      Begin Web Test
#Test Teardown   End Web Test
#Suite Teardown  Cleanup Testing Data


*** Test Cases ***
open browser and verify site loads
    open browser
    go to  https://www.saucedemo.com/
    And user maximises browser
    And User Verifies Site Loads
user Log in and verifies HomePage
    When User Enters Valid Username & Password
    And User Clicks log in button
    Then User Verifies SauceDemo Homepage

user adds item to cart
    Given user adds product to cart

user verifies added product exists in cart
    And verify product in cart

