*** Settings ***
Library  SeleniumLibrary

Default Tags  Sanity    # this tag is applicable for entire test suite excluding specific test case where tag is set/defined for it 

# tag is used to filter and run specific test

*** Test Cases ***
MyFirst Test
    Log  I am in first test
    
MySecond Test
    [Tags]    Smoke  # here I have defined specific tag i.e Smoke hence this test case not execute under Sanity Tag. 
    # It will execute individually
    Log  I am in second test
    
Mythird Test
    Log  I am in third test
    

Myreg Test
    
    Log  I am in third test
    Set Tags    Regression  # here i creating tag which will apply at runtime,.ie. Regression.
    Remove Tags  Regression  #  here removing tag Regression at runtime.   

