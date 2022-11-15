*** Setting ***
Library     RequestsLibrary
Library     Collections
Library    urllib3
Library    JSONLibrary
Resource    ../Utilities/Variables.robot

*** Variables ***
${QueryPara}=   293

*** Test Case ***
Create_Booking
   ${auth}=     create list    admin    password123
   create session  AddData  ${Base_Url}          auth=${auth}
   ${bookingdates}=  create dictionary     checkin=2022-12-02   checkout=2022-12-04
   ${body}=  create dictionary     id=293    firstname=Mudassirali   lastname=Sayyed    totalprice=300  depositpaid=true   additionalneeds=Dinner     bookingdates=${bookingdates}

    ${header}=  create dictionary   Content-Type=application/json
    ${response}=  put on session    AddData      ${Pathpara}/${QueryPara}       json=${body}  headers=${header}
    log to console  ${response.status_code}
    log to console  ${response.content}





