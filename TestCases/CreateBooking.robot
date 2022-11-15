*** Setting ***
Library     RequestsLibrary
Library     Collections
Library    urllib3
Library    JSONLibrary
Resource    ../Utilities/Variables.robot


*** Test Case ***
Create_Booking
    create session  AddData  ${Base_Url}
   ${bookingdates}=  create dictionary     checkin=2022-12-01   checkout=2022-12-03
   ${body}=  create dictionary     firstname=Mudassir   lastname=Ali    totalprice=100  depositpaid=true   additionalneeds=Lunch     bookingdates=${bookingdates}
    ${header}=  create dictionary   Content-Type=application/json
    ${response}=  post on session  AddData      ${Pathpara}        json=${body}  headers=${header}
    log to console  ${response.status_code}
    log to console  ${response.content}





