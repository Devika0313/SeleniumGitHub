*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${browser}      Chrome
${url}      https://www.amazon.in/

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly login to the internet
        Open Browser        ${url}      ${browser}
        Maximize Browser Window
        Wait Until Element Is Visible    xpath://a[normalize-space()='About Amazon']
        Scroll Element Into View        xpath://a[normalize-space()='About Amazon']
        Sleep    2s
        Click Element       xpath://a[normalize-space()='About Amazon']
        Sleep    4s
        Element Should Be Visible    xpath://div[@class='Page-header-bar']
        Close Browser