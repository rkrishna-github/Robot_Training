*** Settings ***
Resource          ../Common_Libraries/common_library.robot

*** Test Cases ***
TC1
    Telnet.Open Connection    192.168.1.7    alias=server2
    ${username} =    Get Value From User    Input user name    default
    ${password} =    Get Value From User    Input password    hidden=yes
    Telnet.Login    ${username}    ${password}
    sleep    10s
    Telnet.Set Prompt    $
    Telnet.Execute Command    ifconfig

TC2
