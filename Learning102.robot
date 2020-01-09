*** Settings ***
Library      SeleniumLibrary


Suite Setup       Test Open Browser
Suite Teardown     Close Browser
*** Variables ***
${Browser}     Chrome
${url}         http://www.practiceselenium.com/practice-form.html
*** Keywords ***
Test Open Browser
     Open Browser    ${url}    ${Browser}
     Maximize Browser Window


*** Test Cases ***
TC1:Run Test Open Browser
    Wait Until Element Is Visible    name=firstname
    Should be cob
    input text    name=firstname    Teerapan
    input text    name=lastname     Manonuek
    select radio button    sex    Female
    select checkbox    id=tea1
    Scroll Element Into View     id=submit
    Select From List By Label     id=continents    Australia
    sleep   2s
    Select From List By Index     id=continents    1
    sleep   2s
