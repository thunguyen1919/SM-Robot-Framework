*** Settings ***
Resource          ../Resources/checkout.robot

Test Setup       Open my Browser
Test Teardown    Close Browsers

*** Test Cases ***
Buy products when not logged in
    [Tags]    TC03
    [Documentation]    User buys product when not logged in
    User searches for product
    User adds product to shopping cart
    Click icon Cart
    User click Checkout button
    User should go to Login page

Buy products when logged in
    [Tags]    TC03
    [Documentation]    User buys product when logged in
    User login
    User searches for product
    User adds product to shopping cart
    Click icon Cart
    User click Checkout button
    User should go to Review Your Order & Complete Checkout page