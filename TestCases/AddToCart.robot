*** Settings ***
Documentation        test to login to login page
Library    SeleniumLibrary
Task Setup    open the browser
Test Teardown    close browser session
Resource    ../Resources/GenericResource.robot
Resource    ../Resources/AddToCart.robot
Resource    ../Resources/DashboardResource.robot

*** Test Cases ***
#test case1
validate phone is added to cart
    AddToCart.Click the Phone button
    AddToCart.click the product_phone
    AddToCart.click Add to cart
    DashboardResource.verify the cart page opens

#testcase2
validate phone and monitor is added to cart.
    AddToCart.Click the Phone button
    AddToCart.click the product_phone
    AddToCart.click Add to cart
    DashboardResource.verify the home page opens
    AddToCart.Click the Monitor button
    AddToCart.click the product_monitor
    AddToCart.click Add to cart
    DashboardResource.verify the cart page opens
    ${total_amount}=    Get Text    xpath://h3[text()="760"]
    Should Be Equal As Strings    ${total_amount}    760


#testcase3
validate the monitor is removed 
    AddToCart.Click the Phone button
    AddToCart.click the product_phone
    AddToCart.click Add to cart
    DashboardResource.verify the home page opens
    AddToCart.Click the Monitor button
    AddToCart.click the product_monitor
    AddToCart.click Add to cart
    DashboardResource.verify the cart page opens
    AddToCart.click delete button
    DashboardResource.Verify the cart page opens

    
validate monitor element is not added to cart
    AddToCart.Click the Phone button
    AddToCart.click the product_phone
    DashboardResource.verify the home page opens
