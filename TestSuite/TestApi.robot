*** Settings ***
Documentation       Simple example using AppiumLibrary

Resource            ../Resource_init.robot
Library             AppiumLibrary
Library             RequestsLibrary
Library             Collections

#Dummyjson API : https://dummyjson.com/docs/products
#DOC Collections Library : https://robotframework.org/robotframework/latest/libraries/Collections.html#library-documentation-top
#DOC RequestsLibrary Library : https://robotframework.org/robotframework/latest/libraries/Collections.html#library-documentation-top
*** Test Cases ***
Get Request Test
    # Create Session    google    http://www.google.com
    Create Session    dummyjson    https://dummyjson.com/products

    # ${resp_google}    GET On Session    google    /    expected_status=200
    ${resp_json}    GET On Session    dummyjson    /1
    Log    ${resp_json.json()}
    Dictionary Should Contain Key    ${resp_json.json()}    title  

Post Request Test Ex
    Create Session    jsonplaceholder    https://jsonplaceholder.typicode.com
    &{data}    Create dictionary    title=Robotframework requests    body=This is a test!    userId=1
    Log    ${data}
    ${resp}    POST On Session    jsonplaceholder    /posts    json=${data}    expected_status=anything

    Status Should Be    201    ${resp}
    Dictionary Should Contain Key    ${resp.json()}    id

Post Request Test Ex
    Create Session    dummyjson    https://dummyjson.com/products
    &{data}    Create dictionary    title=BMW Pencil
    Log    ${data}
    ${resp}    POST On Session    dummyjson    /add    json=${data}    expected_status=anything

    Status Should Be    200    ${resp}
    Dictionary Should Contain Key    ${resp.json()}    id

Put Request Test
    Create Session    dummyjson    https://dummyjson.com/products
    &{data}    Create dictionary    title=TEST
    ${resp}    PUT On Session    dummyjson    /1    json=${data}    expected_status=anything

    Status Should Be    200    ${resp}
    Log    ${resp.json()}
    Dictionary Should Contain Item    ${resp.json()}    title    TEST

Patch Request Test
    Create Session    dummyjson    https://dummyjson.com/products
    &{data}    Create dictionary    title=TEST
    ${resp}    PATCH On Session    dummyjson    /1    json=${data}    expected_status=anything

    Status Should Be    200    ${resp}
    Log    ${resp.json()}
    Dictionary Should Contain Item    ${resp.json()}    title    TEST

Delete Request Test
    Create Session    dummyjson    https://dummyjson.com/products
    ${resp}    DELETE On Session    dummyjson    /1

    Status Should Be    200    ${resp}
    Log    ${resp.json()}
    Dictionary Should Contain Item    ${resp.json()}    isDeleted    True
    
