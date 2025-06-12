*** Settings ***
Library     RequestsLibrary

*** Variables ***
${BASE_URL}     https://videogamedb.uk/swagger-ui/index.html#/api-video-games-controller-v-2
${ENDPOINT}     https://videogamedb.uk:443/api/v2/videogame

*** Test Cases ***
Get request example
    Create Session    jsonplaceholder    ${BASE_URL}
    ${response}=        GET On Session      jsonplaceholder     ${ENDPOINT}
    Log    ${response.status_code}
    Log    ${response.content}
    Should Be Equal As Numbers    ${response.status_code}    200