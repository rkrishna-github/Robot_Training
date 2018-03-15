*** Settings ***
Suite Setup       Testsuite1_Setup
Suite Teardown    Testsuite1_Teardown
Test Setup        Testcase_Setup
Test Teardown     Testcase_Teardown
Resource          ../Common_Libraries/common_library.robot
Library           ../../../../Users/rkommine/Desktop/test.py

*** Test Cases ***
TC1
    [Setup]    TC1_Setup
    Keyword1
    [Teardown]    TC1_Teardown

TC2
    Log    "This is TC2"

TC3
    Log    "This is TC3"

TC4
    Log    ${integer_variable}
    Fail    Msg="Expected"

TC20
    ${time} =    Convert Time    1:00:01    verbose
    Log    ${time}

*** Keywords ***
