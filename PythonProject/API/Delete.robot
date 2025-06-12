*** Settings ***
Library     RequestsLibrary

*** Variables ***
${BASE_URL}     https://reqres.in/
${servicename}      api/users/2


*** Test Cases ***
DELETE request Example
    RequestsLibrary.Create Session    baseURI    ${BASE_URL}       verify=True
    &{headers}=     Create Dictionary       content-type=application/json
    &{headers}=     Create Dictionary       x-api-key=reqres-free-v1
    ${response}=        DELETE On Session     baseURI        ${servicename}     ${headers}
    Log    ${response}
    Log    ${response.status_code}