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
        Choose File    xpath://input[@id='file-upload']    ${path}
        Sleep    2s
        Click Element    xpath://input[@id='file-submit']    ${path}
        Sleep    2s
        Wait Until Element Is Visible    xpath://h3[normalize-space()='File Uploaded!']
        ${text}=        Get Text        //h3[normalize-space()='File Uploaded!']
        Log To Console    ${text}
        Close Browser