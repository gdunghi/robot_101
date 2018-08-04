*** Settings ***
Suite Setup     Open the login page
Test Setup      Go to login page
Test Template   Login With Invalid Credentials Should Fail
Suite Teardown  Close Browser
Resource	login_libary.robot

*** Test Cases ***              User Name      Password
Invalid Username                invalid        mode
Invalid Password                demo  invalid
Invalid Username And Password   invalid        whatever
Empty Username                  ${EMPTY}       xxx
Empty Password                  demo  ${EMPTY}
Empty Username And Password     ${EMPTY}       ${EMPTY}


*** Keywords ***
Login With Invalid Credentials Should Fail
    [Arguments]  ${username}  ${password}
    Fill in username  ${username}
    Fill in password  ${password}
    Submit data to system
    Login Should Have Failed