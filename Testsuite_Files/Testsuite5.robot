*** Settings ***
Resource          ../Common_Libraries/common_library.robot

*** Test Cases ***
TC1
    Library1.count

TC2
    Library1.count    10
