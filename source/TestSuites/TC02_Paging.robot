*** Settings ***
Library           DataDriver    ../TestData/data.xlsx   sheet_name=paging
Resource          ../Resources/paging.robot

Suite Setup       Open my Browser
Suite Teardown    Close Browsers
Test Template     Items Paging

*** Test Cases ***
Paging with item '${item}'

*** Keywords ***
Items Paging
    [Arguments]    ${item}    ${output}
    [Tags]    FLAT
    Click link    SHOP NOW
    Click option button
    Input option items    ${item}
    Output page should contain items    ${output}