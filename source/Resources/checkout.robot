*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      http://supermarket-tws.somee.com/
${BROWSER}        Chrome
${username}    ThuNguyen
${password}    asd@12345
${product}  King Coffee

*** Keywords ***
Open my Browser
    open browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window

Close Browsers
    close all browsers

User searches for product
    wait until element is visible    xpath=//a[normalize-space()='super Market']
    input text    id=TextBoxKeyword    ${product}
    click element    xpath=//i[@class="fa fa-search"]

User adds product to shopping cart
    wait until element is visible    id=MainContent_ItemList_ProductsListView_ctrl0_ButtonAddToCart_0
    scroll element into view    xpath=//a[@id='MainContent_Categories_MainMenuRepeater_SubMenuRepeater_2_LinkButton2_3']
    click element    id=MainContent_ItemList_ProductsListView_ctrl0_ButtonAddToCart_0

Click icon Cart
    wait until element is visible    xpath=//i[@class='fa fa-cart-arrow-down']
    click element    xpath=//i[@class="fa fa-cart-arrow-down"]

User click Checkout button
    wait until element contains    css=h2  YOUR SHOPPING CART CONTAINS: 1 PRODUCTS
    click element    id=MainContent_ButtonCheckout

User login
    click link    Login
    wait until element is visible    id=UserName
    scroll element into view    xpath=//a[normalize-space()='Register Here']
    input text    id=UserName    ${username}
    input password    id=Password    ${password}
    click button    id=LoginButton

User should go to Review Your Order & Complete Checkout page
    wait until element contains    css=h2  Review Your Order & Complete Checkout

User should go to Login page
    wait until element contains    css=h2   LOGIN FORM