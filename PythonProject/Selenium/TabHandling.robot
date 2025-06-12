*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Edge
${url}      https://the-internet.herokuapp.com/windows

${delay}        1s
*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly login to the internet
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Set Selenium Speed    ${delay}
        Click Element       xpath://a[normalize-space()='Click Here']
        Switch Window       title:New Window

        Element Text Should Be      xpath://h3[normalize-space()='New Window']    New Window
        Sleep    2s
        Switch Window       title:The Internet
        Element Text Should Be    xpath://h3[normalize-space()='Opening a new window']    Opening a new window
        Sleep    2s
        Close Browser