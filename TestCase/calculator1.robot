*** Settings ***
Library     SeleniumLibrary
Resource    ../Keywords/KeywordsCal.robot
Resource    ../Resource/Variables.robot
Suite Teardown    Close Browser


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
    KeywordsCal.Open Browser Calculate
    SeleniumLibrary.Click Element    ${BUTTON OK}
    KeywordsCal.Click Number    7
    Click Number    +
    Click Number    3
    Sleep    2