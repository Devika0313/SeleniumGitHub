
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://www.tutorialspoint.com/selenium/practice/date-picker.php
${delay}        1s

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly check the options in the web page
        Open Browser        ${url}      ${browser}

        Maximize Browser Window
        Click Element    xpath://a[normalize-space()='Date Picker']
        Sleep    2s
        Click Element    xpath://input[@id='datetimepicker1']
        Sleep    2s
        Press Key       xpath:xpath://input[@id='datetimepicker1']      11
        Sleep    2s
        Click Element    xpath://span[@class='flatpickr-day today selected']
        Sleep    2s

        Close Browser
