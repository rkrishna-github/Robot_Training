*** Settings ***
Resource          ../Common_Libraries/common_library.robot

*** Test Cases ***
TC1
    Start Process    Notepad.exe    C:\\Workspace\\Test.txt    alias=process1
    ${pid}=    Get Process Id
    Log    ${pid}
    Terminate Process    process1

TC2
    ${result} =    Get Process Result    process1
    Log Many    ${result}
    Log    ${result.rc}

TC3
    Run Process    python    alias=python

TC4
    &{result}=    Get Environment Variables
    Log Many    &{result}
    Log    ${result['PATH']}
