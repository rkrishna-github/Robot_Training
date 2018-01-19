*** Settings ***
Resource          ../Common_Libraries/common_library.robot

*** Test Cases ***
TC1
    printf    "Hello"

*** Keywords ***
printf
    [Arguments]    ${arg1}
    Log    ${arg1}
