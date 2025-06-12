#*** Settings ***
#Library     RequestsLibrary
#
#*** Variables ***
#${BASE_URL}     https://videogamedb.uk:443
#${servicename}      /api/v2/videogame/{id}
#${id}       2
#
#
#*** Test Cases ***
#DELETE request Example
#    RequestsLibrary.Create Session    baseURI    ${BASE_URL}/${id}      verify=True
#    &{headers}=     Create Dictionary       content-type=application/json
#    ${response}=        DELETE On Session     baseURI        ${servicename}     ${headers}
#    Log    ${response}
#    Log    ${response.status_code}

*** Settings ***
Library     RequestsLibrary

*** Variables ***
${BASE_URL}     https://videogamedb.uk:443
${id}       2
${servicename}      /api/v2/videogame/${id}
&{headers}      content-type=application/json


*** Test Cases ***
Post request Example
    RequestsLibrary.Create Session    base_url    ${BASE_URL}      verify=False
    ${response}=        DELETE On Session     base_url        ${servicename}        headers=${headers}
    Log    ${response}
    Log    ${response.status_code}