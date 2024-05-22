*** Settings ***
Documentation     A login resource file with login features
Library     SeleniumLibrary

*** Variables ***
${login}    xpath:(//a[@class='nav-link'])[5]
${login_btn}    css:btn btn-primary
${product_page}    xpath://a[@id="nava"]

*** Keywords ***
Click the login button
    Click Element    ${login}

Fill the login form
    [Arguments]    ${username}    ${password}
    
    Input Text    xpath://input[@id='loginusername']    ${username}
    Input Password    xpath://input[@id='loginpassword']    ${password}
    Click Button    xpath://button[text()='Log in']
    
verify the blank credentials
    Alert Should Be Present    Please fill out Username and Password.

verify the valid credentials
    Element Text Should Be    ${product_page}    PRODUCT STORE

verify the invalid credentials
    Alert Should Be Present    Wrong password.
