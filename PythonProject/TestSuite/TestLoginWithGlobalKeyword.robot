*** Settings ***
Resource        ./../Resources/Resource.robot

*** Test Cases ***
Verify Login functionality
        [Tags]      sanity
        logintoapplication
