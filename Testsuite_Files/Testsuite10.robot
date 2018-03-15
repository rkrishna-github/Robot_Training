*** Settings ***
Library           Remote    http://${ADDRESS}:${PORT}

*** Variables ***
${ADDRESS}        192.168.1.6
${PORT}           4444

*** Test Cases ***
Count Items in Directory
    ${items1} =    Count Items In Directory    /home/rkommine
    ${items2} =    Count Items In Directory    /tmp
    Log    ${items1} items in '${CURDIR}' and ${items2} items in '${TEMPDIR}'

Failing Example
    Strings Should Be Equal    Hello    Hello
    Strings Should Be Equal    not    equal

Open browser in Ubuntu
    ob1
