*** Settings ***
Library		Selenium2Library

*** Variables ***
${LOGIN_URL}	  http://188.166.212.73:7272/html
${WELCOME_URL}    ${LOGIN_URL}/welcome.html


*** Testcases ***
Valid Login
	Open the login page
	Fill in username   demo
	Fill in password   mode
	Submit data to system
	Welcome page should be open
	Close Browser 

*** Keywords ***
Open the login page
	Open Browser   ${LOGIN_URL}  browser=chrome

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
