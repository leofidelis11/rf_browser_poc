*** Settings ***
Resource        ../resources/ecommerce-poc.resource
Suite Teardown  Close Browser    ALL

*** Test Cases ***
Successful login Automation Exercise Website
    Open web browser
    Go to ecommerce website
    Go to login/signup page
    Perform signup

Ecommerce user flow
    Open web browser
    Go to ecommerce website
    Ecommerce flow
