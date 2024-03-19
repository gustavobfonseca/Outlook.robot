*** Settings ***
Resource    ../PageObjects/SetupTeardown.robot
Resource    ../Resources/Locators.robot
Resource    ../PageObjects/Keywords.robot
Resource    ../TestesCase/Login.robot


Test Teardown        Fechar Navegador

*** Test Cases ***
Responder email caixa de entrada usando a tecla R
    [Tags]    Responder
    Dado que eu realize o login
    Quando abrir um email na caixa de entrada    #É O PRIMEIRO EMAIL DA CAIXA
    E pressionar a tecla R
    E redigir a resposta no campo de texto
    E clicar no botão "Enviar"
    Então deve sumir o botão de enviar resposta como evidencia que a resposta foi enviada

Responder email caixa de entrada
    [Tags]    Responder
    Dado que eu realize o login
    Quando abrir um email na caixa de entrada    #É O PRIMEIRO EMAIL DA CAIXA
    E clicar no botao de Responder
    E redigir a resposta no campo de texto
    E clicar no botão "Enviar"
    Então deve sumir o botão de enviar resposta como evidencia que a resposta foi enviada

Agendar resposta "Amanhã manhã"
    [Tags]    Responder
    Dado que eu realize o login
    Quando abrir um email na caixa de entrada    #É O PRIMEIRO EMAIL DA CAIXA
    E pressionar a tecla R
    E redigir a resposta no campo de texto
    E clicar em opções do botão enviar
    E selecionar "Agendar enviar email"
    E selecionar a opção 1 de agendar envio
    Sleep    1s
    E clicar em enviar agendamento    #ERRO
    Então deve sumir o botão de enviar agendamento mostrando que foi enviado com sucesso

Agendar resposta "Domingo manhã"
    [Tags]    Responder
    Dado que eu realize o login
    Quando abrir um email na caixa de entrada    #É O PRIMEIRO EMAIL DA CAIXA
    E pressionar a tecla R
    E redigir a resposta no campo de texto
    E clicar em opções do botão enviar
    E selecionar "Agendar enviar email"
    E selecionar a opção 2 de agendar envio
    E clicar em enviar agendamento
    Então deve sumir o botão de enviar agendamento mostrando que foi enviado com sucesso


Responder email caixa de entrada em uma nova janela
    [Tags]    Responder
    Dado que eu realize o login
    Quando abrir um email na caixa de entrada    #É O PRIMEIRO EMAIL DA CAIXA
    E pressionar a tecla R
    E clicar no ícone de uma nova janela
    E redigir a resposta no campo de texto da nova janela
    E clicar no botão "Enviar" da nova janela
    Então deve sumir a nova janela como evidencia que a resposta foi enviada
    
Responder email caixa de entrada pelas opções de enviar
    [Tags]    Responder
    Dado que eu realize o login
    Quando abrir um email na caixa de entrada    #É O PRIMEIRO EMAIL DA CAIXA
    E pressionar a tecla R
    E redigir a resposta no campo de texto
    E clicar em opções do botão enviar
    E clicar na opção de enviar   
    Então deve sumir a opção de enviar, mostrando que foi enviado com sucesso



