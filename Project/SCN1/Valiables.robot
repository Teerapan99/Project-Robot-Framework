*** Variables ***
${excel}                         Excel_Test.xlsx
${data_Excel}                    Data.xlsx
${Browser}                       chrome
${URL}                           https://digital-uat.scblife.co.th/
${Continue}                      id=btnNext
#Product Lading
${Acknowledge}                   //*[@id="LandingTermCon"]/div/div/div[3]/label/div[2]
${Button_confirm}                id=btnConfirm
#Premium Cal
${Button_Increase}               id=uiSIplus
${Button_decrease}               id=uiSIminus
${Scroll_Button_Continue}        //div[@class='row bg-grey pb-5']
${show_Tex}                      id=btnShowTaxRate
${Hide_Tex}                      id=btnHideTaxRate
#Payment Mode
${Annual}                        //div[@id='paymentModeAnnual']//div[@class='col col-5 line-height-0-5 text-right pr-3']
${Bi-annail}                     //div[@id='paymentModeHalfYearly']//div[@class='col col-5 line-height-0-5 text-right pr-3']
${Quarterly}                     //div[@id='paymentModeQuarterly']//div[@class='col col-5 line-height-0-5 text-right pr-3']
${Monthly}                       //div[@id='paymentModeMonthly']//div[@class='col col-5 line-height-0-5 text-right pr-3']
#Personal Info
${Prefix}                        id=InsuredTitleName
${Prefix_จ.ท.}                   //*[text()="ด.ช."]
${Mobile_Phone}                  id=InsuredMobileNo
${Email}                         id=InsuredEmail
${Monthly_income}                id=InsuredMonthlyIncome
${Number}                        id=InsuredAddressNo
${Moo}                           id=InsuredAddressMoo
${Village}                       id=InsuredAddressVillageName
${Soi}                           id=InsuredAddressSoi
${Road}                          id=InsuredAddressStreet
${Provinec}                      //div[@id='provinceName']//div[@class='css-1hwfws3']
${District}                      //div[@id='districtName']//div[@class='css-1hwfws3']
${SubDistrict}                   //div[@id='subDistrict']//div[@class='css-1hwfws3']
${Zip_Code}                      id=InsuredAddressPostalCode
${House_Address_Use}             //div[@class='insuredRegisterAddress']//label[contains(text(),'Use current address')]
${House_Address_Others}          //div[@class='insuredRegisterAddress']//label[contains(text(),'Others, please specify.')]
${Number1}
${Moo1}
${Village1}
${Soi1}
${Road1}
${Provinec1}
${District1}
${SubDistrict1}
${Zip_Code1}
${Work_Address}
${Office_Name}                  id=InsuredJobAddressName
${Number2}
${Moo2}
${Village2}
${Soi2}
${Road2}
${Provinec2}
${District2}
${SubDistrict2}
${Zip_Code2}
${Mailing_Address}
${Policy_Email}
${Policy_Post}
#Bena

#Cashback

#FATCA

#review
