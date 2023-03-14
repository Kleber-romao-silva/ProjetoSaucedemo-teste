*** Settings ***
Library        SeleniumLibrary


*** Variables ***
${URL}                    https://www.saucedemo.com
${LOGO_LOGIN}             //div[contains(@class,'login_logo')]
${TEXT_HEADER}            //div[@class='login_logo'][contains(.,'Swag Labs')]
${CAMPO_USERNAME}         //input[contains(@placeholder,'Username')]
${INPUT_NAME}             //input[@placeholder='Username']
${TEXT_NAME}              standard_user  
${INPUT_PASSWORD}         //input[contains(@placeholder,'Password')]
${NUMBER_PASSWORD}        secret_sauce
${BTN_LOGIN}              //input[contains(@type,'submit')]
${CLICK_PRODUTO}          //div[@class='inventory_item_name'][contains(.,'Sauce Labs Backpack')]
${BTN_ADD_TO_CART}        //button[contains(.,'Add to cart')]
${BTN_CARRINHO}           //a[@class='shopping_cart_link'][contains(.,'1')]
${BTN_CHECKOUT}           //button[@class='btn btn_action btn_medium checkout_button'][contains(.,'Checkout')]
${INPUT_NAME_CART}        first-name
${FIRST_NAME}             PEDRO
${INPUT_LAST_NAME}        last-name 
${LAST_NAME}              ROCHA
${INPUT_POSTAL_CODE}      postal-code
${POSTAL_CODE}            04835-120
${BTN_CONTINUE}           //input[@name='continue']
${BTN_FINISH}             finish

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

 Fechar o navegador
    Capture Page Screenshot
    Close Browser

#Caso de teste 01
Acessar a home page do site Saucedemo

    Go To     url=${URL}
    Wait Until Page Contains    text=Swag Labs
    Wait Until Element Is Visible    locator=${LOGO_LOGIN}

Preencher o campo username 
    Input Text    locator=${INPUT_NAME}     text=${TEXT_NAME}     

 preencher o campo password
     Input Password    locator=${INPUT_PASSWORD}     password=${NUMBER_PASSWORD} 

clicar no botão login
    Click Button    locator=${BTN_LOGIN} 

#Caso de teste 02 
Clicar no Produto
    Wait Until Element Is Visible    locator=${CLICK_PRODUTO} 
    Click Element    locator=${CLICK_PRODUTO} 

Adicionar no carrinho
    Wait Until Element Is Visible    locator=${BTN_ADD_TO_CART}
    Click Element    locator=${BTN_ADD_TO_CART} 

#Caso de teste 03
Clicar no carrinho
    Wait Until Element Is Visible    locator=${BTN_CARRINHO}  
    Click Element    locator=${BTN_CARRINHO}

Clicar no botão checkout
    Wait Until Element Is Visible    locator=${BTN_CHECKOUT} 
    Click Element    locator=${BTN_CHECKOUT} 

Preencher first name
    Input Text    locator=${INPUT_NAME_CART}    text=${FIRST_NAME} 

Preencher last name
    Input Text    locator=${INPUT_LAST_NAME}     text=${LAST_NAME}

Preencher postal code
    Input Text    locator=${INPUT_POSTAL_CODE}     text=${POSTAL_CODE} 

Clicar no botão continue
    Click Element   locator=${BTN_CONTINUE}


 Confirmar a compra   
  Wait Until Element Is Visible    locator=${BTN_FINISH}  
  Click Element    locator=${BTN_FINISH} 