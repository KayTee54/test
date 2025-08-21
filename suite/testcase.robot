*** Settings ***
Library    SeleniumLibrary
# Test Setup    Open browser url    
# Test Setup    checklogout  
Resource    ../action/action.robot
# Resource    ../action/api/api.robot
Test Teardown    Teardown

*** Test Cases ***
Tcs1
    # [Teardown]    Logoutql
    login1    newfnb01    admin    4321
    #close_pop_up

Tcs2
    [Setup]    Open browser url 
    hover_product
    click_list    
    hover_btn_new_and_click_add_product
    add_form    code3    Checktracking02    10000    20000    0.1    100    check    
    [Teardown]    Run Keywords
    ...    search_product
    ...    delete_product
Tcs3
    [Setup]    Run Keywords
    ...    Open browser url 
    ...    create_client
    hover_cus
    click_cus
    search_cus    KH04
    [Teardown]   del_cus    

tcs4
    [Setup]    TAG_setup
    [Tags]    fggg
    [Template]   login_web
    ${EMPTY}    ${EMPTY}     ${EMPTY}     Bạn hãy nhập đầy đủ thông tin các trường!
    newfnb01    admin    321    Tên đăng nhập hoặc mật khẩu chưa đúng
    76oo    admin222    666    Cửa hàng 76oo không tồn tại
    [Teardown]    Close Browser
*** Keywords ***
# tao km   
Open browser url
    # [Arguments]    ${url}
    Open Browser    ${url_goto}    chrome    browser1    
    # executable_path=E:\\Download\\chromedriver-win64\\chromedriver.exe
    Maximize Browser Window
    login1    newfnb01    admin    4321
    loginapi
    # Prepare data
login_web
    [Arguments]    ${retailer}    ${username}    ${pw}    ${resl}
    tag_login    ${retailer}    ${username}    ${pw}    ${resl}
    

TAG_setup
    Open Browser    ${url_goto}    chrome    browser1   
    #  executable_path=E:\\Download\\chromedriver-win64\\chromedriver.exe
    Maximize Browser Window        
#tao hh = UI, xoa = API
#tao ncc = AI, xoa = UI