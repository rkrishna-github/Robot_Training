*** Settings ***
Resource          ../Common_Libraries/common_library.robot

*** Keywords ***
Testsuite1_Setup
    Log    "This is suitelevel Setup"

Testsuite1_Teardown
    Log    "This is suitelevel Teardwon"

TC1_Setup
    Log    "This is Testcase1 Setup"

TC1_Teardown
    Log    "This is Testcase1 Teardwon"

Testcase_Setup
    Log    "This is Testcase Setup defined globally at Testsuite Level"

Testcase_Teardown
    Log    "This is Testcase Teardwon defined globally at Testsuite Level"

Keyword1
    [Arguments]    ${arg1}
    Log1    ${arg1}
