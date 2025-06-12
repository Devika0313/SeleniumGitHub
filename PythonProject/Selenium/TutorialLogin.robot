*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://www.tutorialspoint.com/selenium/practice/login.php

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly register to the website
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@id='email']     timeout=5
        Input Text      xpath://input[@id='email']    devika@gmail.com
        Input Password      xpath://input[@id='password']       admin123
        Click Element       xpath://input[@value='Login']

        Wait Until Element Is Visible    xpath://h1[@class='mb-3 fw-normal border-bottom text-left pb-2 mb-4']  timeout=5
        Element Should Be Visible    xpath://h1[@class='mb-3 fw-normal border-bottom text-left pb-2 mb-4']  timeout=5
        Close Browser