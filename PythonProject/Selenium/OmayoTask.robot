*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}      https://omayo.blogspot.com/
${expected_url}    https://selenium143.blogspot.com/
${path}     C:\\Users\\hitka\\Downloads\\sampleFile.jpeg
#${delay}        1s

*** Test Cases ***
Verify login success with valid credentials
        [Documentation]     This test case verifies that user is able to successfuly login to the internet
        Open Browser        ${url}      ${browser}
        #Set Selenium Speed    ${delay}
        Maximize Browser Window
        Select From List By Value    id=multiselect1    volvox
        Sleep    1s
        Select From List By Value    id=multiselect1    swiftx
        Sleep    1s
        Select From List By Value    id=multiselect1    Hyundaix
        Sleep    1s
        Select From List By Value    id=multiselect1    audix
        Sleep    1s
        Unselect From List By Value     id=multiselect1     volvox
        Sleep    1s


        Select From List By Value    xpath://select[@id='drop1']      ghi
        Sleep    2s

        Input Text    xpath://textarea[@id='ta1']    Hello!
        Sleep    2s

        Click Element    xpath://a[@value='link1']
        ${current_url}=    Get Location
        Should Be Equal    ${current_url}    ${expected_url}
        Go Back
        Sleep    4s
        Click Element    xpath://a[@value='link2']
        ${current_url}=    Get Location
        Should Be Equal    ${current_url}    ${expected_url}
        Go Back
        Sleep    4s

        Input Text    xpath://textarea[normalize-space()='The cat was playing in the garden.']    Hello!
        Sleep    2s

        Click Element    xpath://button[@name='samename'][1]
        Sleep    2s

        Click Element    xpath://button[@name='samename'][2]
        Sleep    2s

        Click Element   xpath://button[@name='samename'][3]
        Sleep    2s

        Click Element    xpath://input[@id='alert2']
        Sleep    2s
        Handle Alert        action=ACCEPT       timeout=3
        Sleep    4s

        Choose File    xpath://input[@id='uploadfile']    ${path}
        Sleep    2s

        Click Element    xpath://input[@id='timerButton']
        Sleep    2s
        Handle Alert        action=ACCEPT       timeout=3
        Sleep    4s

        Wait Until Element Is Visible    xpath://input[@name='userid']     timeout=5

        Input Text    xpath://input[@name='userid']   Hello
        Input Text    xpath://input[@name='pswrd']    Hello
        Click Element    xpath://input[@value='Login']
        Sleep    2s
        Handle Alert        action=ACCEPT       timeout=3
        Sleep    4s

        Wait Until Element Is Visible    xpath://form[@name='form1']//input[@type='text']     timeout=5
        Input Text    xpath://form[@name='form1']//input[@type='text']   Hello
        Input Text    xpath://form[@name='form1']//input[@type='password']    Hello
        Click Element    xpath://button[normalize-space()='LogIn']

        Wait Until Element Is Visible    xpath://input[@class='gsc-input']     timeout=5
        Input Text    xpath://input[@class='gsc-input']   Hello
        Click Element    xpath://input[@type='submit']
        Sleep    2s
        Reload Page
        Sleep    2s

        Wait Until Element Is Visible    xpath://input[@id='radio1']
        Select Radio Button     gender     male
        Sleep    2s

        Wait Until Element Is Visible    xpath://input[@id='alert1']
        Click Element    xpath://input[@id='alert1']
        Sleep    2s
        Handle Alert        action=ACCEPT       timeout=3
        Sleep    4s

        Wait Until Element Is Visible    xpath://input[@id='checkbox1']
        Select Checkbox    xpath://input[@id='checkbox1']
        Select Checkbox    xpath://input[@id='checkbox2']

#        Click Element    xpath://input[@id='rotb']
#        ${current_Text}=    Get Text    xpath://input[@id='rotb']
#        Log To Console    ${current_Text}
#        Should Be Equal    ${current_Text}    ReadThisText

        Wait Until Element Is Visible       xpath://input[@id='prompt']
        Click Element    xpath://input[@id='prompt']
        Sleep    2s
        Input Text Into Alert    hello
        Sleep    2s

        Wait Until Element Is Visible       xpath://input[@id='confirm']
        Click Element    xpath://input[@id='confirm']
        Sleep    2s
        Handle Alert        action=DISMISS      timeout=3
        Sleep    4s
        Wait Until Element Is Visible    xpath://a[normalize-space()='jqueryui']
        Click Element    xpath://a[normalize-space()='jqueryui']
        Go Back

        Wait Until Element Is Visible    xpath://input[@name='vehicle']
        Select Radio Button     vehicle     Bike
        Sleep    2s

        Page Should Contain Checkbox    xpath://input[@value='Pen'][@name='accessories']
        Select Checkbox    Pen
        Select Checkbox    Book
        Select Checkbox    Laptop
        Select Checkbox    Bag


        Wait Until Element Is Visible    xpath://button[normalize-space()='Dropdown']
        Click Element    xpath://button[normalize-space()='Dropdown']
        Sleep    9s
        Click Element    xpath://a[normalize-space()='Flipkart']
        Sleep    2s
        Go Back
        Sleep    2s
        Close Browser