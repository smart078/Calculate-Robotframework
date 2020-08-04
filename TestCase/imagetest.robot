*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
# open
# กดรูปกล้อง
# กดแท็บ
# กด Brow file

Find image from computer
    Open Browser    https://images.google.com/    chrome
    Click Element    //span[@class="BwoPOe"]
    Click Element    //a[contains(.,'อัปโหลดภาพ')]
    Choose File    //input[@type="file"]    ${CURDIR}/1.jpg    


