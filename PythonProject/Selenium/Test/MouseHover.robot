*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Firefox
${url}      https://www.amazon.in/
${delay}        1s

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly login to the internet
${chrome options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
    Call Method    ${chrome options}    add_argument    --headless
    Call Method    ${chrome options}    add_argument    --no-sandbox
    Call Method    ${chrome options}    add_argument    --disable-dev-shm-usage
    Create WebDriver    Chrome    options=${chrome options}
    Go To     https://www.amazon.in/

        Open Browser        ${url}      ${browser}
        Set Selenium Speed    ${delay}
        Maximize Browser Window
        #Mouse hover activity
        
        Mouse Over    xpath://span[normalize-space()='Prime']
        Sleep    4s
        Click Element    xpath://img[@id='multiasins-img-link']
        Sleep    2s
        Element Should Be Visible    xpath://div[@class='primeDetailPage-content-hero-left']
        Sleep    2s
        Close Browser
