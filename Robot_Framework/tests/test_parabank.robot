*** Settings ***
Documentation     Test suite for ParaBank application
Library           SeleniumLibrary
Resource          ../Common/resources.robot
Resource          ../StepDefinitions/BankSteps.robot
Test Setup       Open Browser And Maximize    ${URL}     ${BROWSER}    ${IMPLICIT_WAIT}
Test Teardown    Run Keywords    Capture Screenshot On Failure    Close Browser

*** Variables ***
${BROWSER}        chrome
${URL}            http://parabank.parasoft.com
${IMPLICIT_WAIT}  5s
${CSV_FILE}       ${EXECDIR}/TestData/credentials.csv

*** Test Cases ***
Login To ParaBank
    [Documentation]    Test case to login to ParaBank and validate the title
    [Tags]             smoke
    ${USERNAME}    ${PASSWORD}=    Read Credentials From CSV    ${CSV_FILE}
    Login To Application    ${USERNAME}    ${PASSWORD} 
    Validate Page Title


