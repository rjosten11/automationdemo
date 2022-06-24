***Variables***

***Keywords***
input nickname
    ${nickrandom}       FakerLibrary.Color Name
    Input Text          //*[@id="personal_txtEmpNickName"]      ${nickrandom}
    Sleep       ${pause}

random smoker
    ${randomSmoke}      FakerLibrary.Random Int     min=0   max=1
    Run Keyword If      ${randomSmoke}     Select Checkbox      //*[@id="personal_chkSmokeFlag"]
    Sleep   ${pause}
input date of birth
    ${birthDate}    FakerLibrary.Date Of Birth    minimum_age=20    maximum_age=65
    Input Text    xpath://*[@id="personal_DOB"]    ${birthDate}
    Sleep   ${pause}
    Click Element       //*[@id="frmEmpPersonalDetails"]/fieldset/ol[3]/li[4]/img
    Sleep   ${pause}
select nationality

    @{nationalityListIndex}    Get List Items    xpath://*[@id="personal_cmbNation"]

    ${countNationality}    Get length    ${nationalityListIndex}

    ${maxIndex}    Evaluate    ${countNationality} - 1
    ${nationality}    FakerLibrary.Random Int    min=1    max=${maxIndex}

    Click Element   //*[@id="personal_cmbNation"]
    sleep   ${pause}
    Click Element       //*[@id="personal_cmbNation"]/option[${nationality}]
    #Select from list by index    xpath://*[@id="personal_cmbNation"]    ${nationality}
    Sleep   ${pause}

select marital status
    ${maritalStatus}    Random Element    ['Single', 'Married', 'Other']

    ${randomMarital}       FakerLibrary.Random Int     min=1   max=4
    Click Element       //*[@id="personal_cmbMarital"]
    Click Element       //*[@id="personal_cmbMarital"]/option[${randomMarital}]
    Click Element       //*[@id="frmEmpPersonalDetails"]/fieldset/ol[3]/li[2]/label

    Select from list by value    xpath://*[@id="personal_cmbMarital"]    ${maritalStatus}
    Select from list by index   xpath://*[@id="personal_cmbMarital"]     ${maritalStatus}
    Sleep   ${pause}
input other id
    ${otherID}      FakerLibrary.Numerify       text=####
    Input Text      //*[@id="personal_txtOtherID"]      ${otherID}
    Sleep   ${pause}

input drivers license
    ${driversL}     FakerLibrary.Numerify       text=############
    input text      //*[@id="personal_txtLicenNo"]      ${driversL}
    Sleep   ${pause}

input drivers license expiry
    ${expiryDate}       FakerLibrary.Date this Decade       after_today=True
    input text      //*[@id="personal_txtLicExpDate"]       ${expiryDate}
    Sleep   ${pause}
    Click Element   //*[@id="frmEmpPersonalDetails"]/fieldset/ol[2]/li[4]/img
    Sleep   ${pause}
input ssn 
    ${ssNum}        FakerLibrary.Ssn
    input text      //*[@id="personal_txtNICNo"]        ${ssNum}
    Sleep   ${pause}

input sin   
    ${siNum}            FakerLibrary.Numerify       text=#########
    input text      //*[@id="personal_txtSINNo"]        ${siNum}
    Sleep   ${pause}

select gender
    ${gender}    Random Element    ['1', '2']
    Select Radio Button     personal[optGender]    ${gender}
    Sleep   ${pause}

enter employee firstname
    ${empFN}    FakerLibrary.First Name
    Sleep   ${pause}
    Input Text  //*[@id="firstName"]    ${empFN}
    Sleep   ${pause}

enter employee middlename
    ${empMN}    FakerLibrary.Last Name
    Sleep   ${pause}
    Input Text  //*[@id="middleName"]   ${empMN}
    Sleep   ${pause}

enter employee lastname
    ${empLN}    FakerLibrary.Last Name
    Sleep   ${pause}
    Input Text  //*[@id="lastName"]     ${empLN}
    Sleep   ${pause}
go to edit/save from pim
    Scroll Element Into view    //*[@id="btnSave"]
    Sleep   ${pause}
click edit/save from pim
    Click Element       //*[@id="btnSave"]
    Sleep   ${pause}
click add from PIM
    Sleep   ${pause}
    Click Element   //*[@id="btnAdd"]
    Sleep   ${pause}
select photo
    Sleep   ${pause}
    ${randomInt}    FakerLibrary.Random Int     min=0   max=5
    Choose File     //*[@id="photofile"]    ${EXECDIR}/resources/${randomInt}.png
    Sleep   ${pause}

click save
    Sleep   ${pause}
    Click Element       //*[@id="btnSave"]