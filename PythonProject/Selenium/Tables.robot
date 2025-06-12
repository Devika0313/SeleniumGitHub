*** Settings ***
Library     SeleniumLibrary
Library    Collections

*** Variables ***
${BROWSER}      Chrome
${URL}         https://the-internet.herokuapp.com/tables

*** Test Cases ***
Verify Key Presses
    [Documentation]    Test pressing keys on the key press input field
    Open Browser       ${URL}    ${BROWSER}
    Maximize Browser Window
    ${name}=        Get Table Cell    xpath://table[@id='table1']    5    1
    Log To Console    ${name}
    Sleep    2
    ${name2}=       Get Table Cell    xpath://table[@id='table1']    2    2
    Log To Console    ${name2}
    Sleep    2


    ${rows}=    Get WebElements    xpath=//table[@id='table1']/tbody/tr
    FOR    ${row}    IN    @{rows}
        ${text}=    Get Text    ${row}
        Log To Console    ${text}
    END


    Close Browser