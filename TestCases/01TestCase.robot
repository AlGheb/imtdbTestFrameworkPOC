*** Settings ***
Library    SeleniumLibrary
Test Setup  Open Browser On Homepage
Test Teardown  Close Browser
Resource    keywords/Variables-Keywords.robot


*** Test Cases ***
Testcase 1 Navigate To Homepage
    [Documentation]    This test simply checks if the homepage is available.
    Click Button  ${MovieList}
    Element Text Should Be  ${AllMovies}  All Movies

Testcase 1 Login
    [Documentation]    The goal of this test is to validate if login is functional.
    Login
    Validate User Is Logged In

#Testcase 2 SignUp
    #[Documentation]    This test validates the core functionality of a new user signing up. However this test doesnt work properly yet.
    #...                To complete this test and keep it easy to maintain it should remove the new user after the test is finished.
    #Click Element  ${SignUp}
    #Input Text  ${Username}  TestUser
    #Input Text  ${Password}  Welkom2022
    #Input Text  ${PasswordRepeat}  Welkom2022
    #Click Element  ${SignupSubmit}
    #Sleep  5s
    #Element Text Should Be  ${CreatedUser}  Successfull Created a user






