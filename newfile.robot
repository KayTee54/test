*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Tcs1
    Open Browser    https://toilatester.wordpress.com/2018/02/13/nhung-tuyet-ky-trong-viec-dung-robotframework/    chrome
    Sleep    3s
    Close Browser
