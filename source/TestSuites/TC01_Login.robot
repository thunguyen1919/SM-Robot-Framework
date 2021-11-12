*** Settings ***
Library           DataDriver    ../TestData/data.xlsx  sheet_name=login
Resource          ../Resources/login.robot

Suite Setup       Open my Browser
Suite Teardown    Close Browsers
Test Template     Login value

*** Test Cases ***
Login with user '${username}' and password '${password}'

*** Keywords ***
Login value
    [Arguments]    ${username}    ${password}    ${output}    ${xpath}
    [Tags]    FLAT
    Click link    Login
    Wait until element is visible    id=UserName
    Scroll element into view    xpath=//a[normalize-space()='Register Here']
    Input username    ${username}
    Input pwd    ${password}
    Click login button
    Output page should be visible   ${output}   ${xpath}