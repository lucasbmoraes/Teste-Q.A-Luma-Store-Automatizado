*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                          https://magento.softwaretestingboard.com/
${BOTAO_LOGIN}                  //a[@href='https://magento.softwaretestingboard.com/customer/account/login/referer/aHR0cHM6Ly9tYWdlbnRvLnNvZnR3YXJldGVzdGluZ2JvYXJkLmNvbS8%2C/']
${INPUT_EMAIL}                  id:email                     
${INPUT_SENHA}                  id:pass
${BOTAO_ENTRAR}                 id:send2
${PRODUTO}                      //*[@id="maincontent"]/div[3]/div/div[2]/div[5]/div/div/ol/li[1]/div/a
${TAMANHO}                      //*[@id="option-label-size-143-item-166"]
${COR}                          //*[@id="option-label-color-93-item-50"]  
${BOTA0_ADD_TO_CART}            //*[@id="product-addtocart-button"]
${SHOPPING_CART}                //a[@href='https://magento.softwaretestingboard.com/checkout/cart/'] 
${BOTAO_PROCEED_TO_CHECKOUT}    id:top-cart-btn-checkout
${BOTAO_NEXT}                   //button[@class='button action continue primary']
${BOTAO_PLACE_ORDER}            //button[@class='action primary checkout']
${CONFIRMACAO_COMPRA}           id:maincontent

*** Keywords ***
Abrir Navegador e Acessar o Site
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Fechar Navegador
    Close Browser

Aguardar e Clicar
    [Arguments]    ${locator}
    Wait Until Element Is Visible     ${locator}    timeout=20
    Click Element                     ${locator}

Aguardar e Preencher
    [Arguments]    ${locator}    ${texto}
    Wait Until Element Is Visible     ${locator}    timeout=20
    Input Text                        ${locator}    ${texto}

*** Test Cases ***
Cenário 1: Realizar checkout
    Abrir Navegador e Acessar o Site
    Aguardar e Clicar               ${BOTAO_LOGIN}
    Aguardar e Preencher            ${INPUT_EMAIL}      lori.watts@example.com
    Aguardar e Preencher            ${INPUT_SENHA}      Teste123**
    Aguardar e Clicar               ${BOTAO_ENTRAR}
    Aguardar e Clicar               ${PRODUTO}
    Aguardar e Clicar               ${TAMANHO}
    Aguardar e Clicar               ${COR}    
    Aguardar e Clicar               ${BOTA0_ADD_TO_CART}
    Aguardar e Clicar               ${SHOPPING_CART}
    Aguardar e Clicar               ${BOTAO_PROCEED_TO_CHECKOUT}
    Sleep                           4s
    Aguardar e Clicar               ${BOTAO_NEXT}
    Sleep                           4s
    Aguardar e Clicar               ${BOTAO_PLACE_ORDER}
    Wait Until Element Is Visible   ${CONFIRMACAO_COMPRA}    timeout=10
    Fechar Navegador
