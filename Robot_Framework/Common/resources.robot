*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem
Library    BuiltIn
Library    String

*** Keywords ***
Capture Screenshot
    [Arguments]    ${name}
    Capture Page Screenshot    ${name}

Assert Element Text
    [Arguments]    ${locator}    ${expected_text}
    Element Text Should Be    ${locator}    ${expected_text}

Read Credentials From CSV
    [Arguments]    ${CSV_FILE}
    ${content}=    Get File    ${CSV_FILE}
    ${lines}=    Split String    ${content}    \n
    ${header}=    Set Variable    ${lines}[0]
    ${data}=    Set Variable    ${lines}[1]
    ${username}=    Set Variable    ${data.split(',')[0]}
    ${password}=    Set Variable    ${data.split(',')[1]}
    RETURN    ${username}    ${password}

Capture Screenshot On Failure
    Register Keyword To Run On Failure    Capture Page Screenshot
