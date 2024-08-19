*** Settings ***
Library    Browser      enable_presenter_mode=${FALSE}  #timeout=00:00:05
Library    FakerLibrary
Library    DateTime

*** Variables ***
${BROWSER}                     chromium
${HEADLESS}                    ${false}
${SITE_AUTOMATION_EXERCISE}    https://automationexercise.com/

*** Keywords ***
Open web browser
    New Browser        browser=${BROWSER}
    ...                headless=${HEADLESS}
    
    ${TRACE_NAME}      FakerLibrary.Uuid 4
    ${NOW}             Get Current Date     result_format=%d-%m-%Y_%H%M%S
    &{recordVideo}     Create Dictionary    dir=${OUTPUT_DIR}/evidencies/videos/${NOW}
    New Context        viewport={'width': 1200, 'height': 800}
    ...                tracing=${OUTPUT_DIR}/evidencies/traces/${NOW}/${TRACE_NAME}.zip
    ...                recordVideo=${recordVideo}

Go to ecommerce website
    New Page            url=${SITE_AUTOMATION_EXERCISE}    wait_until=load
    Get Title    ==     Automation Exercise

Perform signup
    Click               css=a[href="/login"]
    ${EMAIL}            FakerLibrary.Email
    Fill Text           input[data-qa="signup-name"]            Leonardo Fidelis
    Fill Text           input[data-qa="signup-email"]           ${EMAIL}
    Click               css=button[data-qa="signup-button"]
    
    Check Checkbox      id=id_gender1
    Fill Text           id=password   P4ssw0rd
    Select Options By   id=days    value    5
    Select Options By   id=months    value    4
    Select Options By   id=years    value    2000
    Check Checkbox      id=newsletter
    Check Checkbox      id=optin

    Fill Text           id=first_name    Leonardo
    Fill Text           id=last_name    Fidelis
    Fill Text           id=company    Valtech
    Fill Text           id=address1    345, Leverage St
    Select Options By   id=country    value    Australia
    Fill Text           id=state    Queensland
    Fill Text           id=city    Brisbane
    Fill Text           id=zipcode    123458
    Fill Text           id=mobile_number    12345678900
    Click               css=button[data-qa="create-account"]
    Get Title    ==     Automation Exercise - Account Created
    Get Text    css=h2[data-qa="account-created"]    ==    ACCOUNT CREATED!











