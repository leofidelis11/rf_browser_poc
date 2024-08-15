*** Settings ***
Resource  ../resources/ecommerce-poc.resource

*** Test Cases ***
Successful login Automation Exercise Website
    Open web browser
    Go to ecommerce website
    Perform signup
