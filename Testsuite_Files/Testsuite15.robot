*** Settings ***
Library           DatabaseLibrary
Library           Selenium2Library

*** Test Cases ***
TC1
    Connect To Database    MySQLdb    test1    test1    test1    localhost    3306
    Table Must Exist    recipes
    #Execute Sql String    INSERT INTO recipes(recipe_id, recipe_name) VALUES (1,"Tacos"),(2,"Tomato Soup"), (3,"Grilled Cheese");
    @{queryResults}=    Query    select * from \ recipes;
    Log Many    @{queryResults}
    Log    ${queryResults[0][1]}

TC2
    Open Browser    https://getbootstrap.com/docs/4.0/components/modal/    gc
    Click Element    xpath=/html/body/div[@class='container-fluid']/div[@class='row flex-xl-nowrap']/main[@class='col-12 col-md-9 col-xl-8 py-md-3 pl-md-5 bd-content']/div[@class='bd-example'][1]/button[@class='btn btn-primary']
    Click Element    xpath=/html/body[@class='modal-open']/div[@class='container-fluid']/div[@class='row flex-xl-nowrap']/main[@class='col-12 col-md-9 col-xl-8 py-md-3 pl-md-5 bd-content']/div[@id='exampleModalLive']/div[@class='modal-dialog']/div[@class='modal-content']/div[@class='modal-footer']/button[@class='btn btn-secondary']

TC3
    Open Browser    https://www.w3schools.com/html/html_links.asp    gc
    Sleep    10s
    Click Element    xpath=//a[contains(text(),'Try')][1]
    Sleep    10s
    Select Window    url="https://www.w3schools.com/html/html_links.asp"
