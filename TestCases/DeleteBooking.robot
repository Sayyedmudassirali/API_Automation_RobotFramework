*** Setting ***
Library     RequestsLibrary
Library     Collections
Library    urllib3
Library    JSONLibrary
Resource    ../Utilities/Variables.robot

*** Variables ***
${QueryPara}=   3509

*** Test Case ***
Validate_Delete_Request
    ${auth}=     create list    admin    password123
    create session  MySession  ${Base_Url}  auth=${auth}
    ${response}=  delete on session    MySession  ${Pathpara}/${QueryPara}
#    log to console  ${response.status_code}
#    log to console  ${response.content}

    #VALIDATION
    ${status_code}=  convert to string  ${response.status_code}
    should be equal  ${status_code}  201

