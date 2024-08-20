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

Go to login/signup page
    Click               css=a[href="/login"]

Perform login
    Fill Text    css=[data-qa="login-email"]       usertester@email.com
    Fill Text    css=[data-qa="login-password"]    p4ssw0rd
    Click        css=[data-qa="login-button"]
    Get Text     css=[href="/logout"]    *=    Logout

Perform signup
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
    Get Text            css=h2[data-qa="account-created"]    ==    ACCOUNT CREATED!

Ecommerce flow

    Scroll To        vertical=50%

    Click            css=a[href="/product_details/24"]
    Fill Text        id=quantity    30
    Click            css=button[type="button"]
    Click            css=u

    Click            css=a[class="btn btn-default check_out"]

    Click            id=checkoutModal >> css=a[href="/login"]

    Perform signup

    Click            css=a[data-qa="continue-button"]

    Click            css=.navbar-nav [href='/view_cart']

    Click            id=do_action >> css=.check_out

    Fill Text        css=.form-control    I am writing a comment

    Click            css=a[href="/payment"]

    Fill Text        css=[data-qa="name-on-card"]    User Tester
    Fill Text        css=[data-qa="card-number"]    123456789
    Fill Text        css=[data-qa="cvc"]    123
    Fill Text        css=[data-qa="expiry-month"]    12
    Fill Text        css=[data-qa="expiry-year"]    2024
    Click            css=[data-qa="pay-button"]
    Get Text         css=h2[data-qa="order-placed"]    ==    ORDER PLACED!

    Click            css=[data-qa="continue-button"]
    Get Title    ==    Automation Exercise

    Click            css=[href="/logout"]

    Perform login

    Click            css=[href="/contact_us"]
    Get Title    ==    Automation Exercise - Contact Us
    Fill Text                  css=[data-qa="name"]    LeoFidelis
    Fill Text                  css=[data-qa="email"]    usertester@email.com
    Fill Text                  css=[data-qa="subject"]    My order
    Fill Text                  css=[data-qa="message"]    This is a test message to submit the form
    Upload File By Selector    css=input[name="upload_file"]    requirements.txt
    Promise To                 Wait For Alert    action=accept
    Wait For Load State        domcontentloaded    timeout=2s
    Click                      xpath=//input[@name='submit']

    Get Text                   css=[class="status alert alert-success"]    *=    Success!
    Click                      css=[href="/logout"]
    Get Text                   css=[href="/login"]    *=    Login
    


    
