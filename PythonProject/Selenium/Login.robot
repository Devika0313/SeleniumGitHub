*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://opensource-demo.orangehrmlive.com

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly login to the internet
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@placeholder='Username']     timeout=5
        Input Text    xpath://input[@placeholder='Username']    Admin
        Input Text    xpath://input[@placeholder='Password']    admin123
        Click Element    xpath://button[normalize-space()='Login']
        Wait Until Element Is Visible    xpath://h6[normalize-space()='Dashboard']  timeout=5
        Element Should Be Visible    xpath://h6[normalize-space()='Dashboard']  timeout=5
        Close Browser