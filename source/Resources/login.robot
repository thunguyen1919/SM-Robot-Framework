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

Input username
    [Arguments]    ${username}
    Input Text    id=UserName    ${username}

Input pwd
    [Arguments]    ${password}
    Input Password    id=Password    ${password}

Click login button
    Click Button    id=LoginButton

Output page should be visible
    [Arguments]    ${username}   ${password}    ${output}
    ${output}=  Run Keyword And Return Status    page should contain    SUPER MARKET
    Run Keyword If    ${output}    element should contain    xpath=//div[@class='text-danger']  ${output}
    Run Keyword If    ${output}    wait until page contains    ${output}
