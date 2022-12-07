*** Setting ***
Library     RequestsLibrary
Library     Collections
Resource    ../Utilities/Variables.robot
Resource    ../Utilities/Keywords_GetRequest.robot



*** Test Case ***
TC001_Validating Status code for get request
    [Tags]    Positive
    [Documentation]    Validate Status code for get request, Expected is Pass
    When Open GET API URL
    Then Validate Status Code

TC002_Validating Specific String for get request
    [Tags]    positive
    [Documentation]    Validate correct ID and String, expected is Pass
    When Open GET API URL
    Then Validate specific string in the json


TC003_Validating Status code for get request for Negative Test
    [Tags]    Negative
    [Documentation]    Validate Status code for get request with incorrect code, Expected is Fail
    When Open GET API URL
    Then Validate Status Code

TC004_Validating Specific String for get request for Negative Test
    [Tags]    Negative
    [Documentation]    Validate inccorrect ID and String, expected is Fail
    When Open GET API URL
    Then Validate specific string in the json

