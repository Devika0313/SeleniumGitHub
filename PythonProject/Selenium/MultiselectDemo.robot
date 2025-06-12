
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://demoqa.com/select-menu
${delay}        1s

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly login to the internet
        Open Browser        ${url}      ${browser}
        Set Selenium Speed    ${delay}
        Maximize Browser Window
         @{list}=      Get Selected List Values        id=cars
        Log     {list}
        #get the common attribute among the radio button
        ${elements}=        Get WebElements     xpath://select[@id='cars']
        FOR    ${element}    IN    @{elements}
            Click Element    ${element}

            Sleep    2s
        END

        Close Browser