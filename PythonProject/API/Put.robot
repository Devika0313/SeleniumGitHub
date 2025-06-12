*** Settings ***
Library     RequestsLibrary

*** Variables ***
${BASE_URL}     https://reqres.in/
${servicename}     api/users/2
&{headers}
${samplejson}       {"name": "morpheus","job": "zion resident"}
&{body}
&{response}

*** Test Cases ***
Post request Example
    RequestsLibrary.Create Session    base_url    ${BASE_URL}       verify=True
    &{body}=        Create Dictionary       name=morpheus       job=leader
    &{headers}=     Create Dictionary       content-type=application/json
    &{headers}=     Create Dictionary       x-api-key=reqres-free-v1
    ${response}=        PUT On Session     base_url        ${servicename}      json=${body}        headers=${headers}
    Log    ${response}
    Log    ${response.status_code}