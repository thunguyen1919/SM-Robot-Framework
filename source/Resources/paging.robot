*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN URL}      http://supermarket-tws.somee.com/
${BROWSER}        Chrome

*** Keywords ***
Open my Browser
    Open Browser    ${LOGIN URL}    ${BROWSER}
    maximize browser window

Close Browsers
    Close All Browsers

Input option items
    [Arguments]    ${item}
    click element    xpath: //option[contains(text(), "${item}")]

Click option button
    click element    css=[class="sorting-left"]

Output page should contain items
    [Arguments]    ${min}
    wait until page contains element    css=[class="snipcart-thumb"]    limit=${min}
    page should contain element    css=[class="snipcart-thumb"]    limit=${min}