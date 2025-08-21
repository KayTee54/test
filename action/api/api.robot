*** Settings ***
Library    RequestsLibrary
Library    JSONLibrary

# *** Test Cases ***

# Tcs1
#     login
# # Tcs2
# #     create_client
# Tcs3
#     search_product
#     delete_product    

*** Keywords ***

loginapi
    ${body}    Create Dictionary    provider=credentials    UserName=admin    Password=4321
    ${json_string}=    evaluate    json.dumps(${body})    json
    ${header}    Create Dictionary    content-type=application/json    retailer=newfnb01
    Create Session    login    https://fnb.kiotviet.vn    headers=${header}    verify=${True}
    ${respone}    POST On Session    url=/api/users/auth-login   alias=login    data=${json_string}    verify=${True}
    Log    ${respone.status_code}
    ${rsp}    Set Variable    ${respone.json()}
    ${jpath}    Set Variable    $.BearerToken
    ${val}    Get Value From Json    ${rsp}    ${jpath}    
    Log To Console    ${val[0]}  
    Set Global Variable    ${TOKEN}    ${val[0]} 

create_client
    ${customer}    Create Dictionary    BranchId=10240247    IsActive=true    Type=0    Code=KH04    Name=KH04    ContactNumber=0987771123    RetailerId=742710
    ${body}    Create Dictionary    Customer=${customer}
    ${cus}=    Evaluate    json.dumps(${body})    json
    ${header}    Create Dictionary    content-type=application/json    retailer=newfnb01    branchid=10240247    x-group-id=33    x-retailer-id=742710    authorization=${TOKEN}
    ${respone}    POST On Session    url=/api/customers    alias=login       headers=${header}    data=${cus}    verify=${True}
    
# search to get prod_id
search_product
    ${header}    Create Dictionary    content-type=application/json    retailer=newfnb01    branchid=10240247    x-group-id=33    x-retailer-id=742710    authorization=${TOKEN}
    ${respone}    GET On Session    url=/api/branchs/10240247/masterproducts    alias=login    params=Keyword=Checktracking02  
    Log To Console    ${respone}
    ${rsp}    Set Variable    ${respone.json()}
    ${prodjpath}    Set Variable    $.Data[0].Id
    ${prodid}    Get Value From Json    ${rsp}    ${prodjpath}    
    Log To Console    ${prodid[0]}
    Set Global Variable    ${Produdt_id}    ${prodid[0]} 
#then delete product
delete_product
    ${header}    Create Dictionary    content-type=application/json    retailer=newfnb01    branchid=10240247    x-group-id=33    x-retailer-id=742710    authorization=${TOKEN}
    ${del}    DELETE On Session    url=/api/products/${Produdt_id}    alias=login
    Status Should Be    200    ${del}                    