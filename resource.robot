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
    Type Text    xpath=(//input)[1]    WCF Insurance
    Type Text    xpath=(//input)[3]    100 W Towne Ridge Parkway
    Type Text    xpath=(//input)[4]    UT
    Type Text    xpath=(//input)[5]    84124
    Type Text    xpath=(//input)[6]    1954
    Type Text    xpath=(//input)[7]    Corporation
    Type Text    xpath=(//input)[8]    abcdefg
    Click Next

Accept Defaults On Insurance Information
    Click Next

Go To Vehicle
    Click Item    class:button

Add A Vehicle
    Type Text    xpath=(//input)[3]    1D7RV1GP8BS537309
    Textfield Value Should Be    xpath=(//input)[4]    2011
    Textfield Value Should Be    xpath=(//input)[5]    DODGE
    Textfield Value Should Be    xpath=(//input)[6]    RAM 1500
    Select From List By Index    xpath=(//select)[1]    0
    Click Next

Add Vehicle Coverages
    Click Item    xpath=(//*[contains(@class,'hc-checkbox-overlay')])[1]
    Select From List By Index    xpath=(//select)[1]    0
    Click Item    xpath=(//*[contains(@class,'hc-checkbox-overlay')])[2]
    Select From List By Index    xpath=(//select)[2]    0
    Click Item    xpath=(//*[contains(@class,'hc-checkbox-overlay')])[5]
    Select From List By Index    xpath=(//select)[4]    0
    Click Item    xpath=(//*[contains(@class,'hc-checkbox-overlay')])[6]
    Select From List By Index    xpath=(//select)[5]    0
    Click Item    xpath=(//*[contains(@class,'hc-checkbox-overlay')])[8]
    Select From List By Index    xpath=(//select)[6]    0
    Click Next

Add Driver
    Click Item    xpath=(//*[contains(@class,'button')])[5]
    Type Text    xpath=(//input)[1]    John
    Type Text    xpath=(//input)[2]    Q
    Type Text    xpath=(//input)[3]    Doe
    Type Text    xpath=(//input)[4]    8/30/1980
    Type Text    xpath=(//input)[5]    LICENSENUMBER
    Select From List By Label    xpath=(//select)[1]    Utah
    Click Item    xpath=(//*[contains(@class,'hc-checkbox-overlay')])[1]
    Click Item    xpath=(//*[contains(@class,'hc-checkbox-overlay')])[2]
    Click Item    xpath=(//*[contains(@class,'hc-checkbox-overlay')])[3]
    Click Next

Add General Info
    Click Item    xpath=(//*[contains(@class,'button')])[5]
    Click Next
    Type Text    xpath=(//input)[1]    John Q Doe
    Type Text    xpath=(//input)[2]    555-555-5555
    Type Text    xpath=(//input)[3]    johndoe@email.com
    Click Next

Coverage Review
    Click Item    xpath=(//*[contains(@class,'button')])[3]

Click Next
    Wait Until Element Is Not Visible    class:hc-spinner-container    timeout=60
    Click Button    Next

Type Text
    [Arguments]   ${LOCATOR}    ${TEXT}
    Wait Until Element Is Not Visible    class:hc-spinner-container    timeout=60
    Wait Until Page Contains Element    ${LOCATOR}
    Input Text    ${LOCATOR}    ${TEXT}
    Wait Until Element Is Not Visible    class:hc-spinner-container    timeout=60

Click Item
    [Arguments]   ${LOCATOR}
    Wait Until Element Is Not Visible    class:hc-spinner-container    timeout=60
    Wait Until Page Contains Element    ${LOCATOR}
    Click Element    ${LOCATOR}
    Wait Until Element Is Not Visible    class:hc-spinner-container    timeout=60
