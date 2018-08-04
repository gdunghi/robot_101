*** Settings ***
Library		Selenium2Library

*** Variables ***
${LOGIN_URL}	  http://localhost:7272/html
${WELCOME_URL}    ${LOGIN_URL}/welcome.html
${ERROR_URL}	  ${LOGIN_URL}/error.html

*** Keywords ***
Open the login page
	Open Browser   ${LOGIN_URL}  browser=chrome
	Maximize Browser Window
    Set Selenium Speed  0

Go to login page
	Go TO    ${LOGIN_URL}

Fill in username
	[Arguments]    ${username}
	Input Text     username_field   ${username}

Fill in password
	[Arguments]    ${password}
	Input Text     password_field   ${password}

Submit data to system
	Click Button   login_button

Welcome page should be open
	Location Should Be   ${WELCOME_URL}
	Title Should Be      Welcome Page
	Page Should Contain  Login succeeded

Login Should Have Failed
    Location Should Be  ${ERROR_URL}
    Title Should Be  Error Page
