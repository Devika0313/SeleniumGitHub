*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Edge
${url}      https://demoqa.com/alerts

*** Test Cases ***

Verify login success with valid credentials

        [Documentation]         This testcase verifies that the user is able to successfully login to the internet.herokuapp
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Click Element    //button[@id='alertButton']
        Sleep    2s

        #informational alert with ok button only
        Handle Alert        action=ACCEPT
        Sleep    2s

        #alert after 5 sec
        Click Element    //button[@id='timerAlertButton']
        Sleep    7s
        Handle Alert        action=ACCEPT
        Sleep    2s

        #confirmation alerts
        Click Element    //button[@id='confirmButton']
        Sleep    2s
        Handle Alert        action=DISMISS
        Sleep    3s

        #prompt
        Click Element    //button[@id='promtButton']
        Sleep    2s
        Input Text Into Alert    cat
        Sleep    2s
        Close Browser