*** Settings ***
Library    ExtendedSelenium2Library
Library    BuiltIn
Library    openpyxl
Library    String
*** Variables ***
${excel}        Excel_Test.xlsx
*** Keywords ***
open
    Open Browser	    https://digital-uat.scblife.co.th/	     chrome

*** Test Cases ***
Test
    open
	 Maximize Browser Window
	 Wait Until Element Is Visible     id=btnNext
	 # Mouse Down     id=btnNext
   Click Button                      id=btnNext
#Product Landing
   sleep  6s
   Mouse Down                        //*[@id="PolicyConditions"]/div/div/div[1]
	 Click Element                     id=btnNext
	 Click Element                     //*[@id="LandingTermCon"]/div/div/div[3]/label/div[2]
	 Click Element                     id=btnConfirm
#PreMium Cal
	 Sleep   3s
	 Mouse Down                        //*[@id="root"]/div/div[1]/div[3]/div/div[6]
	 Click Element                     id=btnNext
	 Sleep   3s
#Payment Mode
	 Click Element                     id=btnNext
	 Sleep   3s
#Personal Info
   Mouse Down                        id=InsuredJobAddressName
	 Input Text                        id=InsuredJobAddressName      scblife
	 Mouse Down                        //*[@id="root"]/div/div[1]/div[3]/div[4]
	 Click Element                     id=btnNext
	 Sleep   3s
#Benefication
   @{ITEMS}    Create List    บิดา    มารดา   บุตร    พี่    น้อง
   :FOR    ${INDEX1}    ${ELIMENT}    IN ENUMERATE   @{ITEMS}
   \      Click Element              id=RelationShipId0
	 \      Sleep   1s
   \      Log To Console              ${ELIMENT}
   \      Click Element              //option[text()="${ELIMENT}"]
   Log To Console    Easas++@{ITEMS}
   ${wb}         Load Workbook      ${CURDIR}/${excel}
   ${ws}     Set Variable     ${wb['Sheet1']}
   @{ITEMS1}    Create List     1,2    1,3    1,4    1,5    1,6
   :FOR    ${INDEX2}    ${ELIMENT2}    IN ENUMERATE   @{ITEMS1}
   \      Log To Console     "yyy"+${ws}
   \      Evaluate     $ws.cell(${ELIMENT2},'@{ITEMS}[${INDEX2}]')
   \      Log To Console     ${INDEX}
   \      Log To Console    ${ELIMENT2}
   \      Evaluate     $wb.save('${excel}')

   Input Text                        id=Percent0    100
	 Input Text                        id=BeneficiaryFullName0      นายมี มีประกันภัย
	 Scroll Element Into View         //*[@id="btnNext"]
	 Click Button                     //*[@id="btnNext"]
	 Sleep   3s
#Cashback
   Scroll Element Into View          id=btnNext
   Click Element                     id=btnNext
	 Sleep   3s
#FATCA
   Scroll Element Into View          id=btnNext
	 Click Element                     //*[@id="root"]/div/div[1]/div[3]/div/div[5]/div[2]/div[2]/div/div/div/div[1]/label
	 Click Element                     id=btnNext
	 Sleep   10s
	 Log        Success
	 Close Browser
