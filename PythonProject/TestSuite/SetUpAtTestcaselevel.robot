*** Test Cases ***
Login
        Setup
        Log To Console    Execute testcase1
        Log To Console    Logging in to the application
        Teardown

AddToCart
        Log To Console    Execute testcase2
        Log To Console    Adding the product to the cart
        Teardown

*** Keywords ***
Setup
        Log To Console  Launching the browser

Teardown
        Log To Console   Closing the browser