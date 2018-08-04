*** Settings ***
Resource	login_libary.robot

*** Testcases ***
Valid Login
	Open the login page
	Fill in username   demo
	Fill in password   mode
	Submit data to system
	Welcome page should be open
	Close Browser 