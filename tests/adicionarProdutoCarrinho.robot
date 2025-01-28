*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                     https://magento.softwaretestingboard.com/
${BOTAO_LOGIN}             //a[@href='https://magento.softwaretestingboard.com/customer/account/login/referer/aHR0cHM6Ly9tYWdlbnRvLnNvZnR3YXJldGVzdGluZ2JvYXJkLmNvbS8%2C/']
${INPUT_EMAIL}             id:email                     
${INPUT_SENHA}             id:pass
${BOTAO_ENTRAR}            id:send2
${PRODUTO}                 //ol/li[1]//a[contains(@class, 'product-item-link')]
${TAMANHO}                 //*[@id="option-label-size-143-item-166"]
${COR}                     //*[@id="option-label-color-93-item-50"]  
${BOTAO_ADD_TO_CART}       //*[@id="product-addtocart-button"] 

*** Keywords ***
Abrir Navegador e Acessar o Site
    Open Browser          ${URL}    chrome
    Maximize Browser Window

Aguardar e Clicar no Elemento
    [Arguments]           ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=10
    Click Element                     ${locator}

Aguardar e Preencher Campo
    [Arguments]           ${locator}    ${texto}
    Wait Until Element Is Visible    ${locator}    timeout=10
    Input Text                       ${locator}    ${texto}

Fechar Navegador
    Close Browser


*** Test Cases ***
Cenário 1: Realizar checkout
    Abrir Navegador e Acessar o Site

    # Realizar login
    Aguardar e Clicar no Elemento        ${BOTAO_LOGIN}
    Aguardar e Preencher Campo           ${INPUT_EMAIL}      lori.watts@example.com
    Aguardar e Preencher Campo           ${INPUT_SENHA}      Teste123**
    Aguardar e Clicar no Elemento        ${BOTAO_ENTRAR}

    # Selecionar produto e personalização
    Aguardar e Clicar no Elemento        ${PRODUTO}
    Aguardar e Clicar no Elemento        ${TAMANHO}
    Aguardar e Clicar no Elemento        ${COR}

    # Adicionar ao carrinho
    Aguardar e Clicar no Elemento        ${BOTAO_ADD_TO_CART}

    Fechar Navegador