*** Settings ***
Resource        ../resources/ecommerce-poc.resource
Suite Teardown  Close Browser    ALL

*** Test Cases ***
Successful login Automation Exercise Website
    Open web browser
    Go to ecommerce website
    Perform signup
