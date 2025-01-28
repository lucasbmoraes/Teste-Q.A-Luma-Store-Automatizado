*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Variables ***
${URL}                     https://magento.softwaretestingboard.com/
${INPUT_PESQUISA}          id:search
${BOTAO_PESQUISA}          xpath=//button[contains(@class, 'action search')]
${RESULTADO_PRODUTO}       xpath=//li[contains(@class, 'product-item')]
${ULTIMO_RESULTADO}        xpath=(//li[contains(@class, 'product-item')])[last()]

*** Keywords ***
Abrir Navegador e Acessar o Site
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Pesquisar Produto
    [Arguments]                      ${produto}
    Input Text                       ${INPUT_PESQUISA}    ${produto}
    Click Element                    ${BOTAO_PESQUISA}
    Wait Until Element Is Visible    ${RESULTADO_PRODUTO}    timeout=10

Clicar no Último Resultado
    ${last_result}    Get WebElement    ${ULTIMO_RESULTADO}
    Click Element     ${last_result}

Verificar Redirecionamento
    Wait Until Page Contains Element    xpath=//h1[contains(@class, 'page-title')]    timeout=10

Fechar Navegador
    Close Browser

*** Test Cases ***
Cenário 1: Buscar por "shirt" no menu superior
    Abrir Navegador e Acessar o Site
    Pesquisar Produto    shirt
    Clicar no Último Resultado
    Verificar Redirecionamento
    Fechar Navegador
