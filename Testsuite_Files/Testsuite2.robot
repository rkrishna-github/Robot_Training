*** Settings ***
Resource          ../Common_Libraries/common_library.robot

*** Variables ***
${x}              10

*** Test Cases ***
TC1
    Log    "Hello"

TC2
    log    "123"
    log    ${x}
