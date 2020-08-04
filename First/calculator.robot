*** Settings ***
Library     SeleniumLibrary
Suite Teardown    Close Browser

*** Variables ***
${BUTTON OK}    //a[contains(.,'OK')]
${BUTTON 2}    //td[@onclick="AddTxt('2')"]
${BUTTON PLUS}    //td[@onclick="AddTxt('+')"]
${BUTTON 1}    //td[@onclick="AddTxt('1')"]
${CALCULATE BUTTON}    //td[@onclick="Calc(true)"]

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

*** Test Cases ***
# เปิด browser chrom ด้วย URL: https://www.rapidtables.com/calc/math/calculator.html
# กดปุ่ม OK 
# กดปุ่ม เลข2
# กดปุ่ม +
# กดปุ่ม เลข1
# กดปุ่ม =
# ตรวจสอบ ผลลัพธ์ว่าต้องเท่ากับ 3

# โจทย์
# กด 2 + 1 เท่ากับ 3
# validate 3
 
Calculate 2+1=3
    Calculate

Calculate with Keywords
    Open Browser Calculate
    Click Element    ${BUTTON OK}
    Click Number    7
    Click Number    +
    Click Number    3
    Sleep    2