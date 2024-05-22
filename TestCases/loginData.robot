*** Settings ***
Documentation        test to logim to login page
Library    SeleniumLibrary
Task Setup    open the browser
Test Teardown    close browser session
Resource    ../Resources/GenericResource.robot
Resource    ../Resources/LoginResource.robot

*** Test Cases ***
validate unsuccessful login using invalid username
    LoginResource.Click the login button
    LoginResource.Fill the login form    ${invalid_username}    ${valid_password}
    LoginResource.verify the invalid credentials

Validate Unsuccessful login using invalid password
    LoginResource.Click the login button
    LoginResource.Fill the login form    ${valid_username}    ${invalid_password}
    LoginResource.verify the invalid credentials

validate Successful login using valid credentials
    LoginResource.Click the login button
    LoginResource.Fill the login form    ${valid_username}    ${valid_password}
    LoginResource.verify the valid credentials

validate Successful login using invalid credentials
    LoginResource.Click the login button
    LoginResource.Fill the login form    ${invalid_username}    ${invalid_password}
    LoginResource.verify the invalid credentials

validate Unsuccessful login for blank username
    LoginResource.Click the login button
    LoginResource.Fill the login form    ${blank_username}    ${blank_password}
    LoginResource.verify the blank credentials
