
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
        Page Should Contain Radio Button    xpath://input[@class='radioButton']
        Select Radio Button     radioButton   radio2
        Close Browser