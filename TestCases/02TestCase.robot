*** Settings ***
Library    SeleniumLibrary
Resource    keywords/Variables-Keywords.robot
Library    SeleniumLibrary
Test Setup  Open Browser On Homepage
Test Teardown  Close Browser
Resource    keywords/Variables-Keywords.robot

*** Test Cases ***
Test Case 1 Validate Search Result
    [Documentation]    The goal of this test is to validate the used search term yields results that contain the searchterm.
    Login
    Validate User Is Logged In
    Enter Searchterm
    Check Movietitles From Search Result



