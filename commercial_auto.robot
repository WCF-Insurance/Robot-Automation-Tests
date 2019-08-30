*** Settings ***
Documentation     A test suite with ...
...
...               Words
Resource          resource.robot

*** Test Cases ***
Go To Commercial Auto Page
    Load Commercial Auto Page
    Clear Business Information
    Add Business Information
    Accept Defaults On Insurance Information
    Go To Vehicle
    Add A Vehicle
    [Teardown]    Close Browser
