*** Setting ***
Library     RequestsLibrary
Library     Collections
Library    JSONLibrary
Resource    ../Utilities/Variables.robot


*** Keywords ***
Open GET API URL
    create session  Get_booking_Details  ${Base_Url}


Validate Status Code
    ${response}=  get on session  Get_booking_Details   ${Pathpara}
    ${Status_Code}=  convert to string      ${response.status_code}
    should be equal  ${Status_Code}  200


#To Validate any json string, change Query parameter and body string to validate
Validate specific string in the json
    ${response}=  get on session  Get_booking_Details   ${Pathpara}/35987
    ${Status_Code}=  convert to string      ${response.status_code}
    ${body}=  convert to string  ${response.content}
    should contain  ${body}  John

#To Print body content in console
Print body content
    ${response}=  get on session  Get_booking_Details   ${Pathpara}
    ${Status_Code}=  convert to string      ${response.status_code}
    log to console  ${response.content}

#To Print headers data in console
Print headers
    ${response}=  get on session  Get_booking_Details   ${Pathpara}
    ${Status_Code}=  convert to string      ${response.status_code}
    log to console  ${response.headers}

#To Print Status code in console
Print Status Code
    ${response}=  get on session  Get_booking_Details   ${Pathpara}
    ${Status_Code}=  convert to string      ${response.status_code}
    log to console  ${response.status_code}
