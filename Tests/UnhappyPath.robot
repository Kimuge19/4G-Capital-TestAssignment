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
    Given user enters invalid username & password
    And user clicks log in button
    Then user verifies error message exists for invalid log in

User verifies the closng of browser windows after execution
    And close all browsers

