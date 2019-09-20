# *** Settings ***
# Resource    Valiables.robot

*** Variables ***

*** Keywords ***
open
    Open Browser	     ${URL}       ${Browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${Continue}
    Click Element    ${Continue} 

Loop Test /Put Data to Excel
    ${wb}         Load Workbook      ${CURDIR}/${excel}
    ${ws}     Set Variable     ${wb['Sheet1']}
    @{sheet}    Create List     1,2    1,3    1,4    1,5    1,6
    @{ITEMS}    Create List      1    2    3    4    5
    :FOR    ${INDEX}    ${ELIMENT}    IN ENUMERATE   @{ITEMS}
    \      Evaluate     $ws.cell(@{sheet}[${INDEX}],'${ELIMENT}')
    \      Evaluate     $wb.save('${excel}')
Get Data From Excel
    ${wbGet}      Load Workbook           ${CURDIR}/${data_Excel}
    ${wsGet}    Set Variable    ${wbGet.get_sheet_by_name('Sheet1')}
    ${cell}    Set Variable     ${wsGet.cell(1,3).value}
    ${body}    Fetch From Right    ${cell}    {}
    Log To Console        ${body}
