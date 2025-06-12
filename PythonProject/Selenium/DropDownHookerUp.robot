
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://the-internet.herokuapp.com/dropdown
${delay}        1s

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly login to the internet
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        @{labels}=      Get Selected List Labels        id=dropdown
        Log     {labels}

        Select From List By Value       id=dropdown     1
        Sleep    2s
        Select From List By Index       id=dropdown     2
        Sleep    2s

        Select From List By Label       id=dropdown       Option2
        Sleep    2s
        Close Browser