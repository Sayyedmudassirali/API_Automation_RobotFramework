*** Setting ***
Library     RequestsLibrary
Library     Collections
Library    JSONLibrary
Library         DataDriver      ../TestData/TestData.xlsx       sheet_name=TestData
Resource    ../Utilities/Variables.robot
Resource    ../Utilities/keywords.robot
Suite Setup     CreateMethod
Test Template   PostMethod

*** Test Case ***
Create_Booking  ${firstname}        ${lastname}     ${totalprice}   ${depositpaid}  ${additionalneeds}  ${checkin}  ${checkout}


*** Keywords ***
PostMethod
    [Arguments]     ${firstname}        ${lastname}     ${totalprice}   ${depositpaid}  ${additionalneeds}  ${checkin}  ${checkout}
    ${bookingdates}=  create dictionary     checkin=${checkin}   checkout=${checkout}
   ${body}=  create dictionary     firstname=${firstname}   lastname=${lastname}    totalprice=${totalprice}  depositpaid=${depositpaid}   additionalneeds=${additionalneeds}     bookingdates=${bookingdates}
    ${header}=  create dictionary   Content-Type=application/json
    ${response}=  post on session  AddData      ${Pathpara}        json=${body}  headers=${header}
    ${Actual_StausCode}=    convert to string   ${response.status_code}
    should be equal     ${Actual_StausCode}     200


CreateMethod
            create session  AddData   ${Base_Url}




