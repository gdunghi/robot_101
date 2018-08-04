*** Settings ***
library     Selenium2Library

*** Testcases ***
Valid Login
	Open Browser   http://188.166.212.73:7272/html  browser=chrome
	
	Input Text     username_field   demo
	Input Text     password_field   mode
	Click Button   login_button

	Location Should Be   http://188.166.212.73:7272/html/welcome.html
	Title Should Be      Welcome Page
	Page Should Contain  Login succeeded

	Close Browser 