*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    OperatingSystem
Library    String
Library    random

*** Variables ***
${URL}                     https://magento.softwaretestingboard.com/
${BOTAO_NAV_MEN}           id:ui-id-5
${BOTAO_ADD_TO_CART}       id:product-addtocart-button

*** Keywords ***
Abrir o site da Luma Store
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Acessar módulo de produtos masculinos
    Click Element    ${BOTAO_NAV_MEN}
    Wait Until Element Is Visible    xpath=//ol[contains(@class, 'product-items')]    timeout=5s

Selecionar produto aleatório e acessar
    ${total_produtos}       Get Element Count    xpath=//ol[contains(@class, 'product-items')]/li
    ${index_aleatorio}      Evaluate    random.randint(1, ${total_produtos})    random
    Click Element    xpath=(//ol[contains(@class, 'product-items')]/li)[${index_aleatorio}]//a[contains(@class, 'product-item-photo')]
    Wait Until Element Is Visible    id=product-options-wrapper    timeout=5s

Selecionar tamanho disponível
    Click Element    xpath=(//*[@id="product-options-wrapper"]//div[contains(@class, 'swatch-option') and not(contains(@class, 'disabled'))])[1]

Selecionar cor disponível
    Click Element    xpath=(//*[@id="product-options-wrapper"]//div[2]//div[contains(@class, 'swatch-option') and not(contains(@class, 'disabled'))])[1]

Adicionar ao carrinho
    Click Element    ${BOTAO_ADD_TO_CART}

Fechar navegador
    Close Browser

*** Test Cases ***
Cenário 1: Adicionar um produto aleatório da moda masculina
    Abrir o site da Luma Store
    Acessar módulo de produtos masculinos
    Selecionar produto aleatório e acessar
    Selecionar tamanho disponível
    Selecionar cor disponível
    Adicionar ao carrinho
    Fechar navegador
