*** Settings ***
Resource          ../Common_Libraries/common_library.robot

*** Test Cases ***
TC1
    Log Many    &{dict_variable}
