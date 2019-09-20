*** Settings ***
Library     SeleniumLibrary
Library     Collections
Library     String
Library     DebugLibrary


*** Variables ***
${BROWSER}   Firefox
${SELSPEED}  0.5s

*** Test Cases ***
Cauto_Basic
    [Setup]  Run Keywords  Open Browser  https://bc.wcf.com/quote/auto/123  ${BROWSER}
    ...              AND   Set Selenium Speed  ${SELSPEED}
    # open    https://bc.wcf.com/quote/auto/123
    Sleep  18 seconds 

    click    id=hc-input-1
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Policy Period'])[1]/following::button[2]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Current Carrier'])[1]/following::button[1]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Options'])[1]/following::hc-icon[1]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Vehicles'])[1]/following::div[4]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Options'])[1]/following::hc-icon[1]
    click    id=hc-input-15
    type    id=hc-input-15    Ermon
    type    id=hc-input-17    Treend
    type    id=hc-input-18    11/23/1973
    type    id=hc-input-19    885592332
    select    xpath=(.//*[normalize-space(text()) and normalize-space(.)='State'])[1]/following::select[1]    Utah
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='State'])[1]/following::label[4]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Drive Other Car'])[1]/following::button[1]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Vehicles'])[2]/following::hc-icon[1]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Number of claims'])[1]/following::button[1]
    click    id=hc-input-21
    type    id=hc-input-21    Ermon
    type    id=hc-input-22    8014445559
    type    id=hc-input-23    e.treend@etree.com
    select    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Trade Association'])[1]/following::select[1]    Home Builders Association (HBA) of Utah
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Trade Association'])[1]/following::select[1]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Trade Association'])[1]/following::button[1]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Drivers'])[2]/following::hc-icon[1]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Submit comments to underwriter'])[1]/following::button[1]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Coverage Review'])[1]/following::div[7]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='PIP'])[1]/following::select[1]
    select    xpath=(.//*[normalize-space(text()) and normalize-space(.)='PIP'])[1]/following::select[1]    $5000
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='PIP'])[1]/following::select[1]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='UM'])[1]/following::select[1]
    select    xpath=(.//*[normalize-space(text()) and normalize-space(.)='UM'])[1]/following::select[1]    1,000,000
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='UM'])[1]/following::select[1]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Agency Home'])[1]/preceding::div[11]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Telematics'])[1]/following::select[1]
    select    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Telematics'])[1]/following::select[1]    None
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Telematics'])[1]/following::select[1]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Submit to underwriter'])[1]/following::button[1]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Auto Plus'])[1]/following::label[3]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Employees as Insureds'])[1]/following::label[3]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Hired Auto Physical Damage Limited Coverage'])[1]/following::button[1]
    click    xpath=(.//*[normalize-space(text()) and normalize-space(.)='Agency Home'])[1]/preceding::div[11]
    # [Teardown]  Close Browser

*** Keywords ***
open
    [Arguments]    ${element}
    Go To          ${element}

clickAndWait
    [Arguments]    ${element}
    Click Element  ${element}

click
    [Arguments]    ${element}
    Click Element  ${element}

sendKeys
    [Arguments]    ${element}    ${value}
    Press Keys     ${element}    ${value}

submit
    [Arguments]    ${element}
    Submit Form    ${element}

type
    [Arguments]    ${element}    ${value}
    Input Text     ${element}    ${value}

selectAndWait
    [Arguments]        ${element}  ${value}
    Select From List   ${element}  ${value}

select
    [Arguments]        ${element}  ${value}
    Select From List   ${element}  ${value}

verifyValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

verifyElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

verifyTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

verifyTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertConfirmation
    [Arguments]                  ${value}
    Alert Should Be Present      ${value}

assertText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

assertElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

assertTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

assertTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForText
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForValue
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

waitForElementPresent
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForVisible
    [Arguments]                  ${element}
    Page Should Contain Element  ${element}

waitForTitle
    [Arguments]                  ${title}
    Title Should Be              ${title}

waitForTable
    [Arguments]                  ${element}  ${value}
    Element Should Contain       ${element}  ${value}

doubleClick
    [Arguments]           ${element}
    Double Click Element  ${element}

doubleClickAndWait
    [Arguments]           ${element}
    Double Click Element  ${element}

goBack
    Go Back

goBackAndWait
    Go Back

runScript
    [Arguments]         ${code}
    Execute Javascript  ${code}

runScriptAndWait
    [Arguments]         ${code}
    Execute Javascript  ${code}

setSpeed
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

setSpeedAndWait
    [Arguments]           ${value}
    Set Selenium Timeout  ${value}

verifyAlert
    [Arguments]              ${value}
    Alert Should Be Present  ${value}
