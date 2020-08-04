*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${USER}    manager
${PASSWORD}    sandbox
${USER ADMIN}    admin 
${UERNAME FIELD}    //input[@autocomplete="username"]
${PASSWORD FIELD}    //input[@autocomplete="current-password"]
${BUTTON}    //button[@id="loginbtn"]

*** Keywords ***
login
    [Documentation]    login for test
    [Arguments]    ${USER}    ${PASSWORD}
    Open Browser    https://sandbox.moodledemo.net/login/index.php    chrome
    Input Text    id=username    ${USER}
    Input Password    id=password    ${PASSWORD}
    Click Button    id=loginbtn
    Page Should Contain    Welcome!
    Sleep    2
    Close Browser


*** Test Cases ***
# login successfully
#     เปิด Browser ด้วย Chrome ด้วยURL: https://sandbox.moodledemo.net/login/index.php
#     Input Username ด้วย Userทีชื่อว่า admin
#     Input Password ด้วย Passที่ชื่อว่า sandbox
#     กดปุ่ม ที่ชื่อว่า เข้าสู่ระบบ
#     หน้าจอต้องแสดงเป็นหน้า Welcome
#     ทำการ Close Browser

login successfully
    Open Browser    https://sandbox.moodledemo.net/login/index.php    chrome
    Input Text    id=username    ${USER}
    Input Password    id=password    ${PASSWORD}
    Click Button    id=loginbtn
    Page Should Contain    Welcome!
    Sleep    2
    Close Browser
 
login successfully with keywords
    login    ${USER ADMIN}     

login successfully with xpath
    Open Browser    https://sandbox.moodledemo.net/login/index.php    chrome
    Input Text    ${UERNAME FIELD}    ${USER}
    Input Password    ${PASSWORD FIELD}    ${PASSWORD}
    Click Button    ${BUTTON}
    Page Should Contain    Welcome!
    Sleep    2
    Close Browser