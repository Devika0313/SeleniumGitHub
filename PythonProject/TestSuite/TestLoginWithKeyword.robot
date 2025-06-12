*** Settings ***

Library     SeleniumLibrary
*** Test Cases ***
Verify Login functionality
        [Tags]      sanity
        Log    user enters the username
        Log    user enters the password
        Log    user clicks the login button
        Log    user is navigated to the home page


*** Test Cases ***
Verify Login functionality with keyword
        Login


*** Keywords ***
Login
        Log    user enters the username
        Log    user enters the password
        Log    user clicks the login button
        Log    user is navigated to the home page

