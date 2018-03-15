*** Keywords ***
Keyword1
    Log    "No arguments & No return Values"

Keyword2
    Log    "No arguments & return Values"
    Keyword1
    ${ret}    Set Variable    10
    Log    "Hello1"
    #Run Keyword IF    ${ret}==10    Return From Keyword
    Log    "Hello2"
    #Return From Keyword     ${ret}
    [Return]    ${ret}

Keyword3
    [Arguments]    ${arg1}
    Log    "arguments & No return Values"
    Log    ${arg1}

Keyword4
    [Arguments]    ${arg1}
    Log    "arguments & return Values"
    Log    ${arg1}
    ${ret}    Set Variable    ${arg1}
    Keyword4    ${arg1}
    [Return]    ${ret}

Keyword5
    Log    "This is Example for Run Keyword IF"

Keyword6
    Log    "This is Example for ELSE"

Keyword7
    Log    "This is Example for ELSE IF"

Keyword8
    Log    "Hello"
    ${ret}    Set Variable    False
    [Return]    ${ret}
