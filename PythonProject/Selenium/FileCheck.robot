*** Settings ***
Library     SeleniumLibrary
Library    Collections
Library    OperatingSystem

*** Variables ***
${browser}      Chrome
${url}      https://the-internet.herokuapp.com/download
#${path}    "C:\Users\dsara\Downloads\Test.txt"
*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly login to the internet
        Open Browser        ${url}      ${browser}

        Maximize Browser Window
        Click Element       xpath://a[normalize-space()='Test.txt']
        Sleep    2s
        ${files}=       List Files In Directory    C:/Users/dsara/Downloads
        List Should Contain Value       ${files}        Test.txt
        Sleep    2s
        Close Browser