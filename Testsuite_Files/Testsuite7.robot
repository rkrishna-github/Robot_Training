*** Settings ***
Resource          ../Common_Libraries/common_library.robot

*** Variables ***
${var1}           10

*** Test Cases ***
TC1
    ${var100}=    Keyword2
    Log    ${var100}

TC2
    ${var1}=    function2
    Log    ${var1}

TC3
    Keyword4    10
