*** Settings ***
Documentation     A Add To Cart resource file 
Library     SeleniumLibrary

*** Variables ***
${Phone}    xpath://a[text()="Phones"]
${Monitor}    xpath://a[text()="Monitors"]
${Select_product_phone}    xpath:(//a[@class="hrefch"])[1]
${Select_apple_monitor}    xpath://a[text()="Apple monitor 24"]
${Add_to_Cart}    xpath://a[text()="Add to cart"]
${product_list}    xpath://h4[@class="card-title"]
${delete}    xpath:(//a[text()="Delete"])[2]

*** Keywords ***
Click the Phone button
    Click Link    ${Phone}
    Sleep    3s

Click the Monitor button
    Click Link    ${Monitor}
    Sleep    3s

click the product_phone
    Click Link    ${Select_product_phone}

click the product_monitor
    Click Link    ${Select_apple_monitor}

click Add to cart
    Click Link    ${Add_to_Cart}
    Alert Should Be Present    Product added    accept

click delete button
    Click Link    ${delete}
