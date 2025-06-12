*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://jqueryui.com/datepicker/
${delay}        1s

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly login to the internet
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Select Frame    xpath://iframe[@class='demo-frame']
        Sleep    2s
        Current Frame Should Contain    Date
        Click Element    id=datepicker
        Sleep    2s
        Click Element    xpath://a[normalize-space()='10']
        Sleep    2s
        Close Browser