# **POC: Test Automation with Robot Framework and Playwright**

This project demonstrates a proof of concept (POC) for test automation using Robot Framework and Playwright (Browser Library).

**1. Requirements:**
    
  **1.1 Python 3**
    

Download and install Python 3 from [python.org](https://www.python.org/downloads/).

During installation, make sure to:

- Select **Use Admin privileges**.
- Select **Add Python to PATH**.

![image](https://github.com/user-attachments/assets/bb9e76ef-dc81-45e5-8718-52af9b37c17d)


After installation, verify that Python is added to the PATH by checking the Environmental Variables.

**1.2 Install Robot Framework**

```jsx
pip install robotframework
```

```jsx
robot --version
```

**1.3 Install Node.js**

Download and install Node.js from [nodejs.org](https://nodejs.org/).

**1.4 Install Robot Framework Browser Library**

```jsx
pip install robotframework-browser
```

```jsx
pip list
```

**2. Initialize the Project:**

Run the following commands to initialize Playwright and install dependencies:

```jsx
rfbrowser init
```

```jsx
npm install @playwright/test
```

```jsx
npx playwright install-deps
```

**3. To run the tests:**

Run the following commands to run the tests:

```jsx
robot tests/
```
<br><br>

***Optional Tip: VSCode Setup for Robot Framework**

For easier development, you can use **Robot Framework Language Server** in VSCode. This extension from Robocorp offers syntax highlighting, linting, code completion, debugging support etc.
![image](https://github.com/user-attachments/assets/63e45a76-0eef-4f15-ae24-642c1c07eb2c)

<br><br>

# **Test Plan**

## **Objective**

The objective of this test plan is to perform test automation simulating a user flow into e-commerce platform.

The test plan will cover the scope:

- Visit website
- Select product
- Add product to cart
- Register user and perform login
- Account creation
- Place order
- Process payment
- Perform logout
- Submit form

## **Environment**

Browser: Chrome v134

Device: Desktop Windows 11

## **Tools**

- Test Automation Framework: Robot Framework v7.1
- Programming language: Python
- Library for Web Testing: Browser Library v19.3.0
- Node v22.13.1
- Npm 10.9.2

## **Test Steps**

1. Enter the website and scroll down about halfway down the page.
2. Chose a product and click on “View product” under the picture of the product.
3. In the Quantity box enter 30
4. Click “Add to cart”
5. Click on “Proceed to Checkout”
6. Fill in an email address and click on “Register / Login”
7. Enter name and email under “New User Signup” and click on “Signup” button
8. Fill in all account information form and click on “Create Account” button
9. Click on “Continue” under “ACCOUNT CREATED!” title
10. Click on the Cart in the header
11. Click on “Proceed to checkout”
12. Add a comment and click on “Place Order”
13. Fill in fake Credit Card information and click on “Pay and Confirm Order”
14. Click on “Continue” button
15. Click on “Logout” on top header
16. On the “Login to your account” access, enter with previously created user
17. Click on “Contact us” on the header
18. Fill required data and Click on “Submit”
19. Press “OK” in the pop up
20. Click on the “Logout” button on the header.
