***Settings***
Library         SeleniumLibrary
Library         FakerLibrary
Library         JSONLibrary
Library         String
Resource        ../actions/common.robot
Resource        ../actions/navbar.robot
Resource        ../actions/login.robot
Resource        ../actions/PIM.robot
Test Setup      Open Browser    ${url}    headlesschrome


***Variables***
${url}        https://opensource-demo.orangehrmlive.com
${pause}      0.2s

***Test Cases***
Login
    Maximize Browser Window
    user types Username
    #LOAD JSON
    user types Password
    user clicks login
Go to PIM
    Maximize Browser Window
    user types Username
    user types Password
    user clicks login
    user clicks PIM
    Should be in PIM
    user clicks add
    user fills add employee
    user fills employee employee details

***Keywords***
user types Username
    Enter Username
user types Password
    Enter Password
user clicks login
    Press Login Button
user clicks PIM
    Click PIM
user clicks add
    click add from PIM
user fills add employee
    enter employee firstname
    enter employee middlename
    enter employee lastname
    select photo
    click save
user fills employee employee details
    go to edit/save from pim
    click edit/save from pim
    input other id
    input drivers license
    input drivers license expiry
    input sin
    input ssn 
    select gender
    select marital status
    select nationality
    input date of birth
    random smoker
    input nickname
    click edit/save from pim