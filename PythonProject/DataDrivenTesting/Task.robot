*** Settings ***
Library     DataDriver      C:/Users/kkula/PycharmProjects/JuneRoboFWEGIndia2025/TestData/Task.xlsx       sheet_name=register
Library     SeleniumLibrary
Resource       ../Resources/TaskKeyword.robot

Suite Setup     Launch app
Suite Teardown      Close app
Test Template       InvalidLogin

*** Variables ***
${path}     C:/Users/kkula/Downloads/sampleFile.jpeg

*** Test Cases ***
Register with user ${name} and ${email}         Default UserData

*** Keywords ***
InvalidLogin
        [Arguments]     ${name}     ${email}    ${number}   ${sub}  ${address}
        Sleep    2s
        Set Name    ${name}
        Sleep    2s

        Set Email    ${email}
        Sleep    2s

        Click Element    xpath://div[3]//div[1]//div[1]//div[2]//input[1]
        Sleep    2s

        Set Number    ${number}
        Sleep    2s

        Input Text      id=dob    2023-12-25

        Set Subject    ${sub}
        Sleep    2s
        Click Element    xpath://div[7]//div[1]//div[1]//div[2]//input[1]

        Choose File    //input[@id='picture']    ${path}
        Sleep    2s

        Scroll Element Into View    xpath://textarea[@id='picture']
        Set Address    ${address}
        Sleep    2s

        Select From List By Index    id:state      2
        Sleep    2s
        Select From List By Index    id:city      1
        Sleep    2s
        Click Login