*** Settings ***
Library		Selenium2Library

*** Variables ***
${LOGIN_URL}	  http://188.166.212.73:7272/html
${WELCOME_URL}    ${LOGIN_URL}/welcome.html


*** Testcases ***
Valid Login
	Open Browser   ${LOGIN_URL}  browser=chrome
	
	Input Text     username_field   demo
	Input Text     password_field   mode
	Click Button   login_button

	Location Should Be   ${WELCOME_URL}
	Title Should Be      Welcome Page
	Page Should Contain  Login succeeded

	Close Browser 