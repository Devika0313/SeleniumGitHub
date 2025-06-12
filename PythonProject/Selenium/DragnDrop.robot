*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/drag_and_drop
${delay}        1s

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly login to the internet
        Open Browser        ${url}      ${browser}
        Set Selenium Speed    ${delay}
        Maximize Browser Window
        Drag And Drop    xpath://div[@id='column-a']    xpath://div[@id='column-b']
        Sleep    4s
        Close Browser