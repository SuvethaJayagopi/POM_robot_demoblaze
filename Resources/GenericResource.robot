*** Settings ***
Documentation     A resource file with reusable keywords and variables
Library     SeleniumLibrary

*** Variables *** 
${valid_username}    admin
${valid_password}    admin
${invalid_username}      12344
${invalid_password}      7865
${blank_username}
${blank_password}   
${url}      https://www.demoblaze.com/index.html#
${browser_name}      Chrome

*** Keywords ***

open the browser
      Create Webdriver        ${browser_name}    headlesschrome
      Go To     ${url}    
      Maximize Browser Window
      Set Selenium Implicit Wait     5

close browser session
      Close Browser 
