*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Edge
${url}      https://jqueryui.com/tabs/

*** Test Cases ***
Verify login success with valid credentials

        [Documentation]
        Open Browser        ${url}      ${browser}
        Maximize Browser Window

        Select Frame    xpath://iframe[@class='demo-frame']
        Click Element    xpath://a[@id='ui-id-2']
        Unselect Frame
        Sleep    2s

        Select Frame    xpath://iframe[@class='demo-frame']
        Click Element    xpath://a[@id='ui-id-3']
        Unselect Frame
        Sleep    2s

        Close Browser