*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Variables ***
${browser}      Firefox
${url}      https://the-internet.herokuapp.com/javascript_alerts

*** Test Cases ***
Verify login success with valid credentials
    [Documentation]     This test verfies that user is able to successfully login to the internet
    Open Browser        ${url}      ${browser}
    Maximize Browser Window
    Capture Page Screenshot     C:/Users/dsara/Pictures/Screenshots/Screenshot 2025-06-03 162621.png
    Sleep    2s
    Capture Element Screenshot    xpath://button[@onclick='jsAlert()']      C:/Users/dsara/Pictures/Screenshots/Screenshot 2025-06-03 162621.png
    Close Browser