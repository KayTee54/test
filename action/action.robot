*** Settings ***
Library    SeleniumLibrary
Resource    ../xpath/locator.robot
Resource    ../action/api/api.robot

*** Keywords ***
login1
    [Arguments]    ${retailer}    ${username}    ${password}
    ${retail}    Retailer locator
    ${user}    username locator
    ${pw}    pw locator    
    Wait Until Element Is Visible     ${retail}    5s   
    Input Text    ${retail}    ${retailer}
    Input Text    ${user}    ${username}
    Input Text    ${pw}    ${password}
    Click Element    ${ql}     

close_pop_up
    ${pop}    pop locator
    ${pop_khl}    pop_khl locator
    ${pop_close}    pop_close locator
    Wait Until Element Is Visible    ${pop}    15s
    Sleep    5s
    Click Element    ${pop_khl}
    Click Element    ${pop_close}
tag_login
    [Arguments]    ${retailer}    ${username}    ${pw}    ${resl}
    ${err_log_msg}    err_login_msg
    login1     ${retailer}    ${username}    ${pw}
    Wait Until Element Is Visible    ${err_log_msg}    5s
    Element Text Should Be    ${err_log_msg}    ${resl}
Teardown 
    [Documentation]    Logout
    ${retailer}    Retailer locator  
    ${popup}    Run Keyword And Return Status    Element Should Be Visible    ${pop}    10s
    Run Keyword If    '${popup}'=='True'    Press Keys    //body    ESCAPE
    Wait Until Element Is Visible    ${user}    5s
    Mouse Over    ${user}
    Wait Until Element Is Visible    ${out}    5s
    Click Element    ${out}
    Wait Until Element Is Visible    ${retailer}    10s
    Close Browser
checklogout   
    Go To    ${url_goto}
    ${retailer}    Retailer locator    
    ${status}    Run Keyword And Return Status    Element Should Be Visible    ${retailer}    15s    
    Run Keyword If    '${status}'=='False'    Logoutql

hover_product
    ${prodhover}    producthover locator
    Wait Until Element Is Visible    ${prodhover}    10s
    Mouse Over    ${prodhover}

click_list
    ${list_product}    list_product locator
    Wait Until Element Is Visible    ${list_product}    5s
    Click Element    ${list_product}

hover_btn_new_and_click_add_product
    ${btn_new}    btn_new locator
    ${normal_product}    normal_product locator
    Mouse Over    ${btn_new}
    Click Element    ${normal_product}

add_form
    [Arguments]    ${code}    ${name}    ${cost}    ${base}    ${weight}    ${onhand}    ${searchgroup}    
    ${prod_code}    Prod_code locator
    ${prod_name}    prod_name locator
    ${prod_cost}    prod_cost locator
    ${prod_baseprice}    prod_baseprice locator
    ${prod_weight}    prod_weight locator
    ${prod_onhand}    prod_onhand locator
    ${form_arrow}    form_arrow locator
    ${search_prod_group}    search_prod_group locator
    ${prod_group}    prod_group locator
    ${prod_image}    prod_image locator
    ${save}    btn_save locator
    Wait Until Element Is Visible    ${prod_code}    5s
    Input Text    ${prod_code}    ${code}
    Input Text    ${prod_name}    ${name}
    Input Text    ${prod_cost}    ${cost}
    Input Text    ${prod_baseprice}    ${base}
    Input Text    ${prod_weight}    ${weight}
    Input Text    ${prod_onhand}    ${onhand}
    Click Element    ${form_arrow}
    Sleep    5s
    Input Text    ${search_prod_group}    ${searchgroup}    
    Click Element    ${prod_group}
    Choose File    ${prod_image}    E:\\Download\\Ảnh\\King_of_OOO.jpg    
    Click Element    ${save}
hover_cus
    ${partner}    Partner locator
    Wait Until Element Is Visible    ${partner}    5s
    Mouse Over    ${partner}
click_cus
    ${customer}    Customer locator
    Wait Until Element Is Visible    ${customer}    3s
    Click Element    ${customer}
    Sleep    5s    
search_cus
    [Arguments]    ${cuscode}
    ${cus_search}    Cus_search locator
    Input Text    ${cus_search}    ${cuscode}
    Press Keys    ${cus_search}    ENTER
del_cus
    ${delete_cus}    delete locator
    ${del_pop}    del_cus_pop
    ${delcus_confirm}    del_cus_confirm
    Wait Until Element Is Visible    ${delete_cus}    3s
    Click Element    ${delete_cus}
    Wait Until Element Is Visible    ${del_pop}    5s
    Click Element    ${delcus_confirm}         

# Prepare data
#     ${retailer}    Retailer locator
#     ${pop}    pop locator
#     Set Suite Variable    ${retailer}    
#     Set Suite Variable    ${pop}
    