***Variables***
${pimLoc}       https://opensource-demo.orangehrmlive.com/index.php/pim/viewEmployeeList
***Keywords***
Click PIM
    Sleep       ${pause}
    Click Element       //*[@id="menu_pim_viewPimModule"]
    Sleep       ${pause}
Should be in PIM
    Sleep       ${pause}
    Location Should Be          ${pimLoc}