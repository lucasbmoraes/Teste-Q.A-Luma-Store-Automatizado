** Settings **
Library  SeleniumLibrary

** Variables **

** Keywords **
Abrir o site da Luma Store
    Open Browser  https://magento.softwaretestingboard.com/  chrome

Fechar navegador
    Close Browser

** Test Cases **
Cenário 1: Acessando a homepage do site
    Abrir o site da Luma Store
    Sleep   3s
    Fechar navegador
    