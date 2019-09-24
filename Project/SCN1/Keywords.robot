# *** Settings ***
# Resource    Valiables.robot

*** Variables ***

*** Keywords ***
open
    Open Browser	     ${URL}       ${Browser}
    Maximize Browser Window
    Wait Until Page Contains Element    ${Continue}
    Click Element    ${Continue}
Product Landing Page
    Sleep      5s
    scroll element into view       ${Continue}
    Click Element          ${Continue}
    Click Element       ${Acknowledge}
    Click Element       ${Button_confirm}
Premium cal Page
    Click Element      ${Button_Increase}
    scroll element into view      ${Scroll_Button_Continue}
    Click Element      ${show_Tex}
    Sleep      1s
    scroll element into view      ${Scroll_Button_Continue}
    Click Element          ${Continue}
Payment Mode Page
    Click Element         ${Bi-annail}
    Click Element          ${Continue}
Personal Info
    Wait Until Page Contains Element          ${Prefix}
    Click Element             ${Prefix}
    scroll element into view    ${Prefix_จ.ท.}
    scroll element into view    ${Prefix}
    Click Element          ${Prefix_จ.ท.}
    Clear Element Text     ${Mobile_Phone}
    Input Text             ${Mobile_Phone}     0883406468




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
