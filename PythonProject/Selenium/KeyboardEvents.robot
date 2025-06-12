*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/key_presses
${delay}        1s

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly login to the internet
        Open Browser        ${url}      ${browser}
        Set Selenium Speed    ${delay}
        Maximize Browser Window
        Press Key    xpath://input[@id='target']        SPACE
        Sleep    2s
        Press Key    xpath://input[@id='target']        CNTRL
        Sleep    2s
        Press Key    xpath://input[@id='target']        SHIFT
        Sleep    2s
        Close Browser