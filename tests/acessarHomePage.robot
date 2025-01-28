*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                     https://magento.softwaretestingboard.com/
${ELEMENTO_HOME}           id:maincontent

*** Keywords ***
Abrir o site da Luma Store
    Open Browser          ${URL}    chrome
    Maximize Browser Window

Verificar se a homepage está carregada
    Wait Until Element Is Visible    ${ELEMENTO_HOME}    timeout=10

Fechar navegador
    Close Browser

*** Test Cases ***
Cenário: Verificar carregamento da homepage
    Abrir o site da Luma Store
    Verificar se a homepage está carregada
    Fechar navegador
