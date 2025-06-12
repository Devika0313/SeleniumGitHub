*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://rahulshettyacademy.com/AutomationPractice/

*** Test Cases ***
Verify login success with valid credentials
    [Documentation]     This test verfies that user is able to successfully login to the internet
    Open Browser        ${url}      ${browser}
    Go To    https://google.com
    Sleep    4s
    Go Back
    Sleep    4s
    Reload Page
    Sleep    4s
    Close Browser