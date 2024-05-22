*** Settings ***
Documentation    All the page objects and keyword of dashBoard page
Library    SeleniumLibrary

*** Variables ***
${home}    xpath://a[text()="Home "]
${contact}    xpath://a[text()="Contact"]
${aboutUs}    xpath://a[text()="About us"]
${cart}    xpath://a[text()="Cart"]
${logout}    xpath://a[text()="Log out"]

*** Keywords ***
verify the home page opens
    Click Link    ${home}

verify the contact page opens
    Click Link    ${contact}    

verify the AboutUs page opens
    Click Link    ${aboutUs}    

verify the cart page opens
    Click Link    ${cart}    

verify the logout page opens
    Click Link    ${logout} 

