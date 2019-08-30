*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           Selenium2Library
Library           DebugLibrary

*** Variables ***
${SERVER}             bc.wcf.com
${BROWSER}            Chrome
${AUTO URL}           http://${SERVER}/quote/auto/123


*** Keywords ***
Load Commercial Auto Page
    Open Browser   ${AUTO URL}   ${BROWSER}
    Maximize Browser Window
    Title Should Be    Quote

Clear Business Information
    Wait Until Page Contains Element    xpath=(//input)[1]
    Clear Element Text    xpath=(//input)[1]
    Clear Element Text    xpath=(//input)[2]
    Clear Element Text    xpath=(//input)[3]
    Clear Element Text    xpath=(//input)[4]
    Clear Element Text    xpath=(//input)[5]
    Clear Element Text    xpath=(//input)[6]
    Clear Element Text    xpath=(//input)[7]
    Clear Element Text    xpath=(//input)[8]

Add Business Information
    Wait Until Page Contains Element    xpath=(//input)[1]
    Input Text    xpath=(//input)[1]    WCF Insurance
    Input Text    xpath=(//input)[3]    100 W Towne Ridge Parkway
    Input Text    xpath=(//input)[4]    UT
    Input Text    xpath=(//input)[5]    84124
    Input Text    xpath=(//input)[6]    1954
    Input Text    xpath=(//input)[7]    Corporation
    Input Text    xpath=(//input)[8]    abcdefg
    Click Next

Accept Defaults On Insurance Information
    Click Next

Go To Vehicle
    Wait Until Element Is Not Visible    class:hc-spinner-container    timeout=60
    Click Element    class:button

Add A Vehicle
    Wait Until Page Contains Element    xpath=(//input)[3]    timeout=60
    Input Text    xpath=(//input)[3]    1D7RV1GP8BS537309
    Wait Until Element Is Visible    xpath=(//input)[4]    timeout=20
    Wait Until Element Is Not Visible    class:hc-spinner-container    timeout=60
    Textfield Value Should Be    xpath=(//input)[4]    2011
    Textfield Value Should Be    xpath=(//input)[5]    DODGE
    Textfield Value Should Be    xpath=(//input)[6]    RAM 1500

Click Next
    Wait Until Element Is Not Visible    class:hc-spinner-container    timeout=60
    Click Button    Next
