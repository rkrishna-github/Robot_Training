*** Settings ***
Resource          ../Common_Libraries/common_library.robot

*** Test Cases ***
TC2
    log    "123"
    var     x    =    25
    log     x
