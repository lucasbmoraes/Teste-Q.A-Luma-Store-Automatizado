*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                     https://magento.softwaretestingboard.com/
${BOTAO_NAV_MEN}           id:ui-id-5
${BOTAO_REVIEW}            id:tab-label-reviews
${AVALIACAO}               id:Rating_3_label
${NOME_USUARIO}            id:nickname_field     
${RESUMO}                  id:summary_field
${DESCRICAO}               id:review_field
${SUBMIT_REVIEW}           xpath=//*[@id="review-form"]/div/div/button

*** Keywords ***
Abrir o site da Luma Store
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Acessar módulo de produtos masculinos
    Click Element   ${BOTAO_NAV_MEN}
    Wait Until Element Is Visible    xpath=//ol[contains(@class, 'product-items')]    timeout=5s

Selecionar produto aleatório e acessar
    ${total_produtos}       Get Element Count    xpath=//ol[contains(@class, 'product-items')]/li
    ${index_aleatorio}      Evaluate    random.randint(1, ${total_produtos})    random
    Click Element    xpath=(//ol[contains(@class, 'product-items')]/li)[${index_aleatorio}]//a[contains(@class, 'product-item-photo')]
    Wait Until Element Is Visible    id=product-options-wrapper    timeout=5s

Acessar tab de review
    Click Element    ${BOTAO_REVIEW}

Preencher formulário de review
    Click Element    ${AVALIACAO}
    Input Text       ${NOME_USUARIO}    Usuario Teste
    Sleep            3s
    Input Text       ${RESUMO}          Resumo de teste
    Sleep            3s
    Input Text       ${DESCRICAO}       Descrição de teste
    Sleep            3s
    Click Element    ${SUBMIT_REVIEW}

Fechar navegador
    Close Browser

*** Test Cases ***
Cenário 1: Adicionar review em um produto aleatório da moda masculina
    Abrir o site da Luma Store
    Acessar módulo de produtos masculinos
    Selecionar produto aleatório e acessar
    Acessar tab de review
    Preencher formulário de review
    Sleep   3s
    Fechar navegador
