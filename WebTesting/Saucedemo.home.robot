*** Settings ***
Documentation        Essa suite de testa o site Saucedemo
Resource             Saucedemo.resources.robot
Test Setup           Abrir o navegador
Test Teardown        Fechar o navegador       



*** Test Cases ***
Caso de teste 01- Acessar a home
    [Documentation]    Esse teste acessa a pagina e faz o login
    [Tags]             Login

    Acessar a home page do site Saucedemo
    Preencher o campo username
    preencher o campo password
    clicar no botão login


Caso de teste 02- Pesquisa de Produto
    [Documentation]    Esse teste faz a seleção do Produto e adiciona no carrinho 
    [Tags]             Seleção de Produto

    Acessar a home page do site Saucedemo
    Preencher o campo username
    preencher o campo password
    clicar no botão login
    Clicar no Produto
    Adicionar no carrinho

Caso de teste 03- Carrinho 
    [Documentation]    Esse teste faz o checkout do comprador e finaliza a compra 
    [Tags]             Finalização 
    
    Acessar a home page do site Saucedemo
    Preencher o campo username
    preencher o campo password
    clicar no botão login
    Clicar no Produto
    Adicionar no carrinho
    Clicar no carrinho
    Clicar no botão checkout
    Preencher first name
    Preencher last name
    Preencher postal code
    Clicar no botão continue
    Confirmar a compra

    