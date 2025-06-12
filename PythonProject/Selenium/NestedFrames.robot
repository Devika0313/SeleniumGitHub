
*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://the-internet.herokuapp.com/nested_frames
${delay}        1s

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly login to the internet
        Open Browser        ${url}      ${browser}
        Set Selenium Speed    ${delay}
        Maximize Browser Window
        Select Frame         xpath://frame[@name='frame-left']
        Element Should Contain    xpath://frame[@name='frame-left']    LEFT
        Unselect Frame

        Select Frame        xpath://frame[@name='frame-middle']
        Element Should Contain      xpath://frame[@name='frame-middle']       MIDDLE
        Unselect Frame

         Select Frame       xpath://frame[@name='frame-right']
        Element Should Contain      xpath://frame[@name='frame-right']    RIGHT
        Unselect Frame

        Select Frame        xpath://frame[@name='frame-bottom']
        Element Should Contain      xpath://frame[@name='frame-bottom']            BOTTOM
        Unselect Frame
        Close Browser