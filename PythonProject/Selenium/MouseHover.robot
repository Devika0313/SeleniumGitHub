*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://www.amazon.in/
${delay}        1s

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly login to the internet
        Open Browser        ${url}      ${browser}
        Set Selenium Speed    ${delay}
        Maximize Browser Window
        #Mouse hover activity
        
        Mouse Over    xpath://span[normalize-space()='Prime']
        Sleep    4s
        Click Element    xpath://img[@id='multiasins-img-link']
        Sleep    2s
        Element Should Be Visible    xpath://div[@class='primeDetailPage-content-hero-left']
        Sleep    2s
        Close Browser