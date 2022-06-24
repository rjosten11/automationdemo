***Variables***

${username}    Create List     admin
${password}         admin123

@{listCredentials}      admin   admin123

&{dictCredentials}      asdasd=admin      pass=admin123


${loginPage}        https://opensource-demo.orangehrmlive.com/

***Keywords***
Mobile EMU
    ${mobile_emulation}=    Create Dictionary    deviceName=Pixel 5

    ${chrome_options}=      Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver

    Call Method             ${chrome_options}    add_experimental_option    mobileEmulation    ${mobile_emulation}
    Call Method             ${chrome_options}    add_experimental_option    prefs  ${prefs}
    Create Webdriver        Chrome    chrome_options=${chrome_options}

LOAD JSON
    ${jsonCreds}    Load JSON From File     ${EXECDIR}/resources/login-credentials.json
    ${jsonUserN}    Get Value From Json     ${jsonCreds}    $..username
    ${jsonPassW}    Get Value From Json     ${jsonCreds}    $..password
    ${str1}         Convert to String       ${jsonUserN}
    ${str2}     Remove String           ${str1}     [    '    ] 

    Input Text      //*[@id="txtUsername"]      ${str2}   
    Sleep       ${pause}
Enter Username
    Location Should Be      ${loginPage}
    Sleep       ${pause}
    Input Text      //*[@id="txtUsername"]      ${dictCredentials}[asdasd]   
    Sleep       ${pause}
Enter Password
    Location Should Be      ${loginPage}
    Sleep       ${pause}
    Input Text      //*[@id="txtPassword"]      ${dictCredentials}[pass] 
    Sleep       ${pause}
Press Login Button
    Location Should Be      ${loginPage}
    Sleep       ${pause}
    Click Element    //*[@id="btnLogin"]