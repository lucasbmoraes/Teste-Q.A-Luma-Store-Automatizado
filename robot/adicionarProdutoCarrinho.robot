*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                     https://magento.softwaretestingboard.com/

*** Keywords ***
Abrir Navegador e Acessar o Site
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Fechar Navegador
    Close Browser

*** Test Cases ***
Cenário 1: Adicionar Produto ao Carrinho
