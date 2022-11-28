*** Setting ***
Library     RequestsLibrary
Library     Collections
Resource    ../Utilities/Variables.robot



*** Test Case ***
TC001_Booking_Details
    [Tags]    GetBooking
    [Documentation]    Get Booking Details with their ID
    create session  Get_booking_Details  ${Base_Url}
    ${response}=  get on session  Get_booking_Details  ${Pathpara}
    log to console  ${response.status_code}
    #log to console  ${response.content}
    #log to console  ${response.headers}

    #VALIDATION
    ${Status_Code}=  convert to string  ${response.status_code}
    should be equal  ${Status_Code}  200
    #200 is in string format

#    ${body}=  convert to string  ${response.content}
#    should contain  ${body}  oalioalloa

