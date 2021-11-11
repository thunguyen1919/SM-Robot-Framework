*** Settings ***
Library           DataDriver    ../TestData/data.xlsx  sheet_name=login
Resource          ../Resources/login.robot

Suite Setup       Open my Browser
Suite Teardown    Close Browsers
