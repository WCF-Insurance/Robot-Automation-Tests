*** Settings ***
Documentation     A test suite with ...
...
...               Words
Resource          resource.robot

*** Test Cases ***
Commercial Auto Happy Path
    Load Commercial Auto Page
    Clear Business Information
    Add Business Information
    Accept Defaults On Insurance Information
    Go To Vehicle
    Add A Vehicle
    Add Vehicle Coverages
    Add Driver
    Add General Info
    Coverage Review
    [Teardown]    Close Browser
