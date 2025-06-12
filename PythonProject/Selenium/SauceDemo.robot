*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://www.saucedemo.com/

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly login to the website
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@id='user-name']     timeout=5
        Input Text      xpath://input[@id='user-name']    devika
        Input Password      xpath://input[@id='password']       admin123
        Click Element       xpath://input[@id='login-button']

        Wait Until Element Is Visible    xpath://div[@id='login_button_container']  timeout=5
        Element Should Be Visible    xpath://div[@id='login_button_container']  timeout=5
        Close Browser