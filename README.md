# API Automation
Hey! World this is REST API Testing using Python language with Robot framework.
CURD operations are performed in this repo using POST, GET, PUT, DELETE methods.
Deals with JSON data validation.
Validate data in XML file and XML response.
Also, validate Headers and Cookies.
All the APIs are executed using the Requests Library.

 - Utilities Directory contains variables robot files in which we include Baseurl and Path parameter as Global Variables
 - TestCase Directory contains GET, POST, PUT, DELETE Request Test Cases, I cover only one Test Case for each request
 - results directory is under Test Cases Folder, when we execute the test, result will store in html formate, also we can find log file.
 - 

## Environment Setup
1. [Python](https://www.python.org/downloads/)
2. [Pycharm](https://www.jetbrains.com/pycharm/download/#section=windows)
3. Install following library using CMD
    - robot framework           ```pip install robotframework```
    - requests                  ```pip install requests```
    - robotframework-requests   ```pip install robotframework-requests```
    - robotframework-jsonlibrary```pip install -U robotframework-jsonlibrary```

## How to run test Case
    - Go to Restfulbooker/TestCases>robot -d results *.robot

## This will execute all test cases in one go, if we want to run one by one the command would be
    - Restfulbooker/TestCases>robot -d results Getbooking.robot
