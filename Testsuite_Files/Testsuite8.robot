*** Settings ***
Resource          ../Common_Libraries/common_library.robot

*** Variables ***
${x}              10
${s}              "Robot"
@{arr1}           10    20    30    40

*** Test Cases ***
TC1
    Comment    This is an example for comment    This is comment
    Comment    ${str2} =    Catenate    SEPARATOR=---    Hello    world    Robot
    ...    Framework
    ${str2} =    Catenate    SEPARATOR=---    Hello    world    Robot    Framework

TC2
    : FOR    ${x}    IN RANGE    1    10
    \    Log    ${x}

TC3
    Run Keyword If    ${x}==100    Keyword1
    ...    ELSE    Pass Execution    All features available in this version tested.

TC4
    #Run Keyword IF    '${x}'=='100'    Keyword5
    #...
    ...    # ELSE IF    ${x}==10    Keyword7
    #...
    ...    # ELSE    Keyword6
    Set Global Variable    ${ret}
    ${var1}=    Run Keyword    Keyword2
    Log    ${var1}

TC5
    Keyword2

TC6
    Run Keyword And Continue On Failure    Keyword8
    Log    "Hello"

TC7
    Should Be Equal As Strings    "Robot"    "ROBOT"    values=False    ignore_case=True

TC8
    Execute Manual Step    "Hello"
    ${username} =    Get Selection From User    Select user name    user1    user2    admin

TC9
    Append To List    ${arr1}    10
    Log Many    @{arr1}
    ${var100}    Set Variable    100
    Log    ${var100}
    Set Global Variable    ${var100}

TC10
    Log Many    @{arr1}
    Log    ${var100}
