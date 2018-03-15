*** Settings ***
Library           XML

*** Variables ***
${XML}            C:\\Workspace\\XML\\document2.xml

*** Test Cases ***
TC1
    ${root} =    Parse XML    ${XML}
    Add Element    ${root}    <new id="x"><c1/></new>    xpath=third
    ${new} =    Get Element    ${root}    xpath=third/new
    Save Xml    ${root}    r'C:\Workspace\XML\Test'    encoding=UTF-8

TC2
    ${root} =    Parse XML    ${XML}
    ${elem} =    Get Element    ${root}    third/new[@id='y']
    ${attribute} =    Get Element Attribute    ${root}    id    third/new[2]
