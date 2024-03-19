*** Settings ***
Resource    ../PageObjects/SetupTeardown.robot
Resource    ../Resources/Locators.robot
Resource    ../PageObjects/Keywords.robot

Test Teardown        Fechar Navegador

*** Test Cases ***
Fazer Login
    [Tags]    Logins
    Dado que eu acesse o site da outlook
    Quando eu clico no botão iniciar sessão
    E mudar para nova aba
    E preencher email
    E clico no botão avançar
    E preencher senha
    Sleep    1s    #para garantir que vai carregar a página
    E clico no botão avançar
    E clico no botão de confirmar login
    Então deve aparecer o botão "novo email" como evidencia de que o login foi feito

Login senha incorreta
    [Tags]    Logins
    Dado que eu acesse o site da outlook
    Quando eu clico no botão iniciar sessão
    E mudar para nova aba
    E preencher email
    E clico no botão avançar
    Sleep    1s    #para garantir que vai carregar a página
    E preencher senha incorreta
    E clico no botão avançar
    Então deve aparecer a mensagem de "senha incorreta"

Login email inexistente
    [Tags]    Logins

    Dado que eu acesse o site da outlook
    Quando eu clico no botão iniciar sessão
    E mudar para nova aba
    E preencher email inexistente
    E clico no botão avançar
    Então deve aparecer a mensagem de "inexistente"

Login alternativo 
    [Tags]    Logins

    Dado que eu acesse o site da outlook
    Quando eu rolar a tela para baixo
    E clicar em iniciar sessão
    E mudar para nova aba
    E preencher email
    E clico no botão avançar
    E preencher senha
    Sleep    1s    #para garantir que vai carregar a página
    E clico no botão avançar
    E clico no botão de confirmar login
    Então deve aparecer o botão "novo email" como evidencia de que o login foi feito



Login alternativo com senha incorreta
    [Tags]    Logins

    Dado que eu acesse o site da outlook
    Quando eu rolar a tela para baixo
    E clicar em iniciar sessão
    E mudar para nova aba
    E preencher email
    E clico no botão avançar
    Sleep    1s    #para garantir que vai carregar a página
    E preencher senha incorreta
    E clico no botão avançar
    Então deve aparecer a mensagem de "senha incorreta"

Login alternativo com email inexistente
    [Tags]    Logins

  Dado que eu acesse o site da outlook
    Quando eu rolar a tela para baixo
    E clicar em iniciar sessão
    E mudar para nova aba
   E preencher email inexistente
    E clico no botão avançar
    Então deve aparecer a mensagem de "inexistente"

*** Keywords ***
