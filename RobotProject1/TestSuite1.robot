*** Settings ***
Library    SeleniumLibrary  # adding selenium lib

Suite Setup    Log     I am in Suite setup      # run before test suite only 
Suite Teardown    Log     I am in Suite teardown    # run after test suite only 
Test Setup    Log    I am in Test setup  # run before every TC
Test Teardown    Log    I am in Test teardown   # run after every TC


*** Variables ***
${url}  https://google.com  # declaring scalar variable i.e url 


*** Test Cases ***
MyFirstTest
  Log  Hello World...

FirstSeleniumTest
    Open Browser  ${url}  chrome  # to open the chrome the browser
    Maximize Browser Window    # To Maximize the current browser
    ${title_var}  Get Window Titles
    Select Window  title=@{title_var}[1]
    Close Window   # for closing the data tab opened for chrome using automated test software
    Select Window  title=@{title_var}[0]
    #Set Focus To Element    name=q
    Set Browser Implicit Wait  5      # To wait for 5 seconds
    Search_text   #this is user defined keyword 
    Sleep  2     # wait for sync
    Close Browser   # for closing the current browse r
    Log  Test completed  # message in log
    
*** Keywords ***
 Search_text
    Input Text    name=q    Automation test  # To input Automation test in input  text box of google search
    Click Element    name=q    # To click on google serach text box
    Click Button    name=btnK  # to click on Google search button    





