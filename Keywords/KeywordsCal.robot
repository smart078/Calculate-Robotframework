*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Calculate
    [Documentation]    result = 3
    Open Browser    https://www.rapidtables.com/calc/math/calculator.html    chrome
    Click Element    ${BUTTON OK}
    Click Element    ${BUTTON 2}
    Click Element    ${BUTTON PLUS}
    Click Element    ${BUTTON 1}
    Click Element    ${CALCULATE BUTTON}
    ${REsult}=  Get Text    //span[@class="result" and contains(.,'=')]
    Log To Console    result${REsult}
    Should Be Equal    ${REsult}     3
    # Page Should Contain    Welcome!
    Sleep    2

Open Browser Calculate
    Open Browser    https://www.rapidtables.com/calc/math/calculator.html    chrome

Click Number
    [Arguments]    ${number}
    Click Element    //td[@onclick="AddTxt('${number}')"]  
