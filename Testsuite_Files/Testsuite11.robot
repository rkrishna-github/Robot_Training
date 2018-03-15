*** Settings ***
Resource          ../Common_Libraries/common_library.robot

*** Variables ***
${username}       ramakrishna
${password}       welc0me

*** Test Cases ***
TC1
    SSHLibrary.Open Connection    192.168.1.6    alias=server1
    SSHLibrary.Open Connection    192.168.1.7    alias=server2
    ${username} =    Get Value From User    Input user name    default
    ${password} =    Get Value From User    Input password    hidden=yes
    SSHLibrary.Switch Connection    server1
    SSHLibrary.Login    ${username}    ${password}
    ${stdout}=    SSHLibrary.Execute Command    apt-get update
    Log    ${stdout}
    Close connection

TC2
    SSHLibrary.Open Connection    192.168.1.6    alias=server1
    ${username} =    Get Value From User    Input user name    default
    ${password} =    Get Value From User    Input password    hidden=yes
    SSHLibrary.Login    ${username}    ${password}
    Get Connection    host=yes    alias=please

TC3
    SSHLibrary.Open Connection    192.168.1.7    prompt=$
    SSHLibrary.Login    ramakrishna    welc0me    delay=15
    sleep    10s
    SSHLibrary.Write    su -
    SSHLibrary.Read Until Prompt    Password:
    SSHLibrary.Write    welc0me
    SSHLibrary.Read Until Prompt    [root@rk-rhel ~]#
    Set Client Configuration    prompt=#
    ${output}=    SSHLibrary.Execute Command    ls -lrt
    Log    ${output}

TC4
    SSHLibrary.Open Connection    192.168.1.7
    SSHLibrary.Login    ${username}    ${password}
    SSHLibrary.Set Client Configuration    prompt=:
    SSHLibrary.Write    su -
    ${output1}=    SSHLibrary.Read Until Prompt
    SSHLibrary.Write    ${password}
    SSHLibrary.Set Client Configuration    prompt=#
    ${output}=    SSHLibrary.Read Until Prompt
    SSHLibrary.Write    ls -lrt
    ${output2}=    SSHLibrary.Read Until Prompt
    Log    ${output2}
    SSHLibrary.Write    ifconfig
    ${output3}=    SSHLibrary.Read Until Prompt
    Log    ${output3}
