*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://the-internet.herokuapp.com/upload
${delay}        1s
${path}     C:/Users/dsara/Pictures/Screenshots/Screenshot 2025-06-03 162621.png
*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly login to the internet
        Open Browser        ${url}      ${browser}
        Set Selenium Speed    ${delay}
        Maximize Browser Window