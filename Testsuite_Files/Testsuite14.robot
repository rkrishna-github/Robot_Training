*** Settings ***
Library           Selenium2Library

*** Test Cases ***
TC1
    open browser    http://amazon.com    gc
    ${var1}=    Get Text    id=glow-ingress-line2
    Log    ${var1}
    Click Element    id=twotabsearchtextbox
    Input Text    id=twotabsearchtextbox    laptop
    Run Keyword If    "${var1}" == "Bengaluru 560076"    Capture Page Screenshot
    Click Element    xpath=//input[@tabindex="20"]
    Click Element    xpath=//input[@name='s-ref-checkbox-1464437031']

TC2
    OPen Browser    https://github.com/login    gc
    Click Element    id=password
    Input Password    id=password    123456
