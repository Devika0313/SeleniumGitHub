*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://www.tutorialspoint.com/selenium/practice/register.php

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly register to the website
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://input[@id='firstname']     timeout=5
        Input Text      xpath://input[@id='firstname']    Devika
        Input Text      xpath://input[@id='lastname']     Rai
        Input Text      xpath://input[@id='username']      devika03
        Input Password      xpath://input[@id='password']       admin123
        Click Element       xpath://input[@value='Register']

        Wait Until Element Is Visible    xpath://h1[@class='mb-3 fw-normal border-bottom text-left pb-2 mb-4']  timeout=10
        Element Should Be Visible    xpath://header[@class='header selenium bg-white p-3 ']  timeout=6
        Close Browser