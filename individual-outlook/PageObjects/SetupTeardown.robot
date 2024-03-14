*** Settings ***
Resource    ../Resources/Locators.robot

*** Keywords ***
Dado que eu acesse o site da outlook
    Open Browser    url=${URL}    browser=Chrome
    Maximize Browser Window


Fechar Navegador
    Close Browser