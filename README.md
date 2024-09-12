**POC: Test Automation with Robot Framework and Playwright**

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
<br><br>
***Optional Tip: VSCode Setup for Robot Framework**

For easier development, you can use **Robot Framework Language Server** in VSCode. This extension from Robocorp offers syntax highlighting, linting, code completion, debugging support etc.
![image](https://github.com/user-attachments/assets/63e45a76-0eef-4f15-ae24-642c1c07eb2c)
