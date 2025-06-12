*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php

*** Keywords ***
Launch App
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
Close App
        Close Browser
Open Login Page
        Go To       ${url}
Set Name
        [Arguments]     ${username}
        Input Text      xpath://input[@id='name']        ${username}
Set Email
        [Arguments]     ${email}
        Input Text      xpath://input[@id='email']        ${email}

Set Mobile
        [Arguments]     ${mobile}
        Input Text      xpath://input[@id='mobile']        ${mobile}

Set DOB
        [Arguments]     ${dob}
        Input Text      xpath://input[@id='dob']        ${dob}

Set Subjects
        [Arguments]     ${subject}
        Input Text      xpath://input[@id='subjects']       ${subject}

Set Address
        [Arguments]     ${address}
        Input Text      xpath://textarea[@id='picture']       ${address}


Click Login
        Click Element    xpath://input[@value='Login']
Error Message Should be Visible
        Element Should Be Visible    xpath://label[@id='name-error']