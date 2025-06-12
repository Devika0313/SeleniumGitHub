*** Settings ***
Library     RequestsLibrary

*** Variables ***
${BASE_URL}     https://videogamedb.uk:443
${servicename}      /api/v2/videogame/{id}
${id}       2
&{headers}      content-type=application/json


*** Test Cases ***
Post request Example
    RequestsLibrary.Create Session    base_url    ${BASE_URL}/${id}       verify=False
    &{body}=        Create Dictionary       category=Platform       name=Mario      rating=Mature       releaseDate=2012-05-04
    ${response}=        PUT On Session     base_url        ${servicename}      json=${body}        headers=${headers}
    Log    ${response}
    Log    ${response.status_code}