
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://rahulshettyacademy.com/AutomationPractice/
${delay}        1s

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly check the options in the web page
        Open Browser        ${url}      ${browser}
        Set Selenium Speed    ${delay}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@id='checkBoxOption1']
        Select Checkbox    checkBoxOption1
        Select Checkbox    checkBoxOption2
        Close Browser