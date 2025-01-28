** Settings **
Library  SeleniumLibrary

** Variables **
${URL}                      https://magento.softwaretestingboard.com/
${INPUT_FIRSTNAME}          id:firstname
${INPUT_LASTNAME}           id:lastname
${INPUT_EMAIL}              id:email_address
${INPUT_PASSWORD}           id:password
${INPUT_CONFIRMPASSWORD}    id:password-confirmation    

** Keywords **
Abrir navegador e acessar o site
    Open Browser    ${URL}   chrome
    Maximize Browser Window

Clicar em criar conta
    Click Element    xpath=//a[text()='Create an Account']

Preencher o formulário
    Input Text      ${INPUT_FIRSTNAME}        Lucas
    Sleep           3s
    Input Text      ${INPUT_LASTNAME}         Moraes
    Sleep           3s
    Input Text      ${INPUT_EMAIL}            lucasteste@gmail.com
    Sleep           5s
    Input Text      ${INPUT_PASSWORD}         Lucas123**
    Sleep           5s
    Input Text      ${INPUT_CONFIRMPASSWORD}  Lucas123**
    Sleep           5s

Clicar em submit
    Click Element    xpath=//button[contains(@class, 'action submit primary')]

Fechar navegador
    Close Browser

** Test Cases **
Cenário 1: Criando conta na Luma Store
    Abrir navegador e acessar o site
    Clicar em criar conta
    Preencher o formulário
    Clicar em submit
    Fechar navegador
    