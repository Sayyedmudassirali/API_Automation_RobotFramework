*** Setting ***
Library     RequestsLibrary
Library     Collections
Library    JSONLibrary
Library         DataDriver      ../TestData/TestData.xlsx       sheet_name=TestData
Resource    ../Utilities/Variables.robot
Suite Setup     CreateMethod
Test Template   PostMethod

*** Test Case ***
Create_Booking  ${firstname}        ${lastname}     ${totalprice}   ${depositpaid}  ${additionalneeds}  ${checkin}  ${checkout}



**** Keywords ***
PostMethod
    [Arguments]     ${firstname}        ${lastname}     ${totalprice}   ${depositpaid}  ${additionalneeds}  ${checkin}  ${checkout}
    ${bookingdates}=  create dictionary     checkin=${checkin}   checkout=${checkout}
   ${body}=  create dictionary     firstname=${firstname}   lastname=${lastname}    totalprice=${totalprice}  depositpaid=${depositpaid}   additionalneeds=${additionalneeds}     bookingdates=${bookingdates}
    ${header}=  create dictionary   Content-Type=application/json
    ${response}=  post on session  AddData      ${Pathpara}        json=${body}  headers=${header}
    log to console      ${response.status_code}
    log to console       ${response.content}



CreateMethod
            create session  AddData   ${Base_Url}
