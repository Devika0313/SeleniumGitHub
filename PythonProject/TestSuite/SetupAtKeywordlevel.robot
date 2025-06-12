*** Test Cases ***
Login
        Login
AddToCart
        AddToCart

*** Keywords ***
Login
        Log To Console    Logging to the application
        Log To Console    user enters the username
        Log To Console    user enters the password
        Log To Console    user clicks on the login button
        Log To Console    user is navigated to the home page
        Log To Console    user is navigated to the home page

AddToCart
        Log To Console    Adding products to the cart
        Log To Console    user enters the username
        Log To Console    user enters the password
        Log To Console    user clicks on the login button
        Log To Console    user is navigatedto the home page
        Log To Console    user adds the product to the cary
        Log To Console    user validates that the product is added to the product

Launch Browser
        Log To Console    Launching the browser

Close the Browser
        Log To Console    Closing the browser
