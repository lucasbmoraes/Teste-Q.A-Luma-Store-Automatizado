*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                      https://magento.softwaretestingboard.com/
${INPUT_FIRSTNAME}          id:firstname
${INPUT_LASTNAME}           id:lastname
${INPUT_EMAIL}              id:email_address
${INPUT_PASSWORD}           id:password
${INPUT_CONFIRMPASSWORD}    id:password-confirmation    

*** Keywords ***
Abrir Navegador e Acessar o Site
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Clicar em Criar Conta
    Click Element    xpath=//a[text()='Create an Account']

Aguardar e Preencher
    [Arguments]    ${locator}    ${texto}
    Wait Until Element Is Visible    ${locator}    timeout=10
    Input Text    ${locator}    ${texto}

Clicar em Submit
    Click Element    xpath=//button[contains(@class, 'action submit primary')]

Fechar Navegador
    Close Browser

*** Test Cases ***
Cenário 1: Criando Conta na Luma Store
    Abrir Navegador e Acessar o Site
    Clicar em Criar Conta
    Aguardar e Preencher    ${INPUT_FIRSTNAME}        Lucas
    Aguardar e Preencher    ${INPUT_LASTNAME}         Moraes
    Aguardar e Preencher    ${INPUT_EMAIL}            lucasteste@gmail.com
    Aguardar e Preencher    ${INPUT_PASSWORD}         Lucas123**
    Aguardar e Preencher    ${INPUT_CONFIRMPASSWORD}  Lucas123**
    Clicar em Submit
    Fechar Navegador
