*** Settings ***
Library     RequestsLibrary

*** Variables ***
${base_url}      https://videogamedb.uk:443
${Servicename}   /api/v2/videogame
&{HEADERS}       content-type=application/json    x-api-key=your_actual_api_key

*** Test Cases ***
POST request example
    Create Session    baseURI    ${base_url}    verify=False
    &{body}=          Create Dictionary    category=Platform    name=Mario    rating=Mature    releaseDate=2012-05-04    reviewScore=85
    ${response}=      POST On Session    baseURI    ${Servicename}    json=${body}    headers=${HEADERS}
    Log               ${response.status_code}
    Log               ${response.content}