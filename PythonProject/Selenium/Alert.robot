*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://rahulshettyacademy.com/AutomationPractice/
${delay}        1s

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly login to the internet
        Open Browser        ${url}      ${browser}
        Set Selenium Speed    ${delay}
        Maximize Browser Window
        Click Element    xpath://button[normalize-space()='Click for JS Alert']
        Sleep    2s
        # Informational alert with ok button only
        Alert Should Be Present
        Handle Alert        action=ACCEPT       timeout=3
        Sleep    4s
        # Confirmation Alert
        Click Element    xpath://button[normalize-space()='Click for JS Alert']
        Sleep    2s
        Alert Should Be Present
        Handle Alert        action=DISMISS      timeout=3
        Sleep    4s
        # promt alerts
        Click Element    xpath://button[normalize-space()='Click for JS Alert'
        Sleep    2s
        Alert Should Be Present
        Input Text Into Alert    hello
        Handle Alert        action=ACCEPT       timeout=3
        Alert Should not Be Present
        Close Browser