*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Edge
${url}      https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php


*** Keywords ***

Launch app
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

Close app
    Close Browser

Open Login Page
    Go To    ${url}

Set Name
    [Arguments]     ${name}
    Input Text    xpath://input[@id='name']    ${name}

Set Email
    [Arguments]     ${email}
    Input Text    xpath://input[@id='email']    ${email}

Set Number
    [Arguments]     ${number}
    Input Text    xpath://input[@id='mobile']    ${number}

Set Subject
    [Arguments]     ${sub}
    Input Text    xpath://input[@id='subjects']    ${sub}

Set Address
    [Arguments]     ${address}
    Input Text    xpath://textarea[@id='picture']    ${address}

Click Login
    Click Element    xpath://input[@value='Login']