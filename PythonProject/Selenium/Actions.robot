*** Settings ***
Library     SeleniumLibrary
Library    Collections
Library    OperatingSystem

*** Variables ***
${browser}      Firefox
${url}      https://www.amazon.in/
#${path}    "C:\Users\dsara\Downloads\Test.txt"
*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly login to the internet
        Open Browser        ${url}      ${browser}

        Maximize Browser Window
        #right click
        Open Context Menu    xpath://a[normalize-space()='Mobiles']
        Sleep    2s
        Close Browser
        
        #double click event
        Double Click Element    xpath://a[normalize-space()='Sell']
        Sleep    2s
        Close Browser