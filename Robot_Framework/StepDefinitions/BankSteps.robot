*** Settings ***
Documentation     Test suite for ParaBank application
Library           SeleniumLibrary

*** Keywords ***
Open Browser And Maximize
    [Arguments]    ${URL}    ${BROWSER}    ${IMPLICIT_WAIT}
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    ${IMPLICIT_WAIT}

Login To Application
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Input Text    name=username    ${USERNAME}
    Input Text    name=password    ${PASSWORD}
    Click Button    xpath=//input[@type='submit']

Validate Page Title
    Title Should Be    ParaBank | Accounts Overview