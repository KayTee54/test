*** Variables ***
${url_goto}    https://fnb.kiotviet.vn/
# ${retailer}    //*[@id="Retailer"]
${username}    //*[@id="UserName"]
${pw}    //*[@id="Password"]
${ql}    //*[@id="btn-login"]
${pb}    //span[@class='text-menu' and contains(text(),'Phòng bàn')]
${menu}    //a[@title='Menu']
${logout}    //a[@class='text-signout']
${icon}    //*[@id="loading-actions"]
${pop}    //*[@id="k-target-popup"]
${user}    //a[@class='dpib userName']
${out}    //ul[@ng-show='showUserMenu']//i[@class='far fa-sign-out fa-fw']

*** Keywords ***
Retailer locator
    ${retailer}    Set Variable    //*[@id="Retailer"]
    [Return]    ${retailer}

username locator
    ${username}    Set Variable    //*[@id="UserName"]
    [Return]    ${username}

pw locator
    ${pw}    Set Variable    //*[@id="Password"]
    [Return]    ${pw}  
err_login_msg
    ${err_log_msg}    Set Variable    //div[@class='validation-summary-errors']//ul/li
    [return]    ${err_log_msg}
ql locator
    ${ql}    Set Variable    //*[@id="btn-login"]
    [Return]    ${ql} 

pop locator
    ${pop}    Set Variable    //*[@id="k-target-popup"]
    [Return]    ${pop}
pop_khl locator
    ${pop_khl}    Set Variable    //div[@class='wrap-popup-hidden']//span
    [return]    ${pop_khl}      
pop_close locator
    ${pop_close}    Set Variable    //div[not(contains(@style,'display: none')) and @class='vodal-dialog']//span[@class='vodal-close']
    [return]    ${pop_close}
producthover locator
    ${product}    Set Variable    //section[@class='container']//ul[@class='menu']//li[@class='ng-scope has-child']//i[@class='fas fas fa-cube']/ancestor::a
    [Return]    ${product}

list_product locator
    ${list_product}    Set Variable    //section[@class='container']//ul[@class='menu']//li[@class='ng-scope has-child']//ul[@class='sub ng-scope']//i[@class='fa-fw fa fa-th']//ancestor::a
    [Return]    ${list_product}

btn_new locator
    ${btn_new}    Set Variable    //div[@class='addProductBtn sm-popup']
    [Return]    ${btn_new}    
normal_product locator
    ${normal_product}    Set Variable    //div[@class='addProductBtn sm-popup']//ul//li//a[contains(text(), ' Thêm hàng hóa')]
    [Return]    ${normal_product}  
form_arrow locator
    ${form_arrow}    Set Variable    //kv-category-dropdownlist[@selected-id='product.CategoryId']//span[@class='k-select']//span[@class='k-icon k-i-arrow-s']
    [Return]    ${form_arrow}
Prod_code locator
    ${prod_code}    Set Variable    //input[@ng-model='product.Code']
    [Return]    ${prod_code}
prod_name locator
    ${prod_name}    Set Variable    //input[@ng-model='product.Name']
    [Return]    ${prod_name}
prod_cost locator
    ${prod_cost}    Set Variable    //input[@ng-model='product.Cost']
    [Return]    ${prod_cost}
prod_baseprice locator
    ${prod_baseprice}    Set Variable    //input[@ng-model='product.BasePrice']
    [Return]    ${prod_baseprice}   

prod_weight locator
    ${prod_weight}    Set Variable    //input[@ng-model='product.Weight']
    [Return]    ${prod_weight} 

prod_onhand locator
    ${prod_onhand}    Set Variable    //input[@ng-model='product.OnHand']
    [Return]    ${prod_onhand}

btn_save locator
    ${btn_save}    Set Variable    //a[@ng-enter='SaveProduct()']
    [Return]    ${btn_save}
search_prod_group locator
    ${search_prod_group}    Set Variable    //div[@class='k-animation-container']//span[@class='k-icon k-i-search']//ancestor::span[@class='k-list-filter']//input[@role='listbox']
    [Return]    ${search_prod_group}
prod_group locator
    ${prod_group}    Set Variable    //div[@class='k-animation-container']//span[contains(text(), 'check tracking rabbitmq')]
    [Return]    ${prod_group}
prod_image locator
    ${prod_image}    Set Variable    (//ul[@class='uploadImageButton']//label)[1]
    [return]    ${prod_image}
Partner locator
    ${partner}    Set Variable    //section[@class='container']//ul[@class='menu']//li[@class='ng-scope has-child']//i[@class='fas fas fa-user-tie']/ancestor::a
    [return]    ${partner}
Customer locator
    ${customer}    Set Variable    (//section[@class='container']//ul[@class='menu']//li[@class='ng-scope has-child']//ul[@class='sub ng-scope']//i[@class='fa-fw fas fa-user-alt']//ancestor::a)[1]
    [return]    ${customer}
Cus_search locator
    ${cus_search}    Set Variable    //section[@class='container main_wrapper']//div[@class='form-group']//input[@ng-model='custFilter.Code']
    [return]    ${cus_search}
delete locator              
    ${delete_cus}    Set Variable    //article[@class='kv-group-btn fnb-groub-btn-mobile']//i[@class='far fa-trash-alt']//ancestor::a
    [return]    ${delete_cus}
del_cus_pop
    ${del_pop}    Set Variable    //div[@class='k-widget k-window k-window-poup k-window-alert k-window-processingSector-alert kv-window kv-close-popup window-error']//ancestor::div[@class='k-window-titlebar k-header']
    [return]    ${del_pop}
del_cus_confirm
    ${delcus_confirm}    Set Variable    //div[@class='kv-window-footer']//button[@ng-enter='onConfirm()']  
    [return]    ${delcus_confirm}        
