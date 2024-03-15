*** Settings ***
Resource    ../PageObjects/SetupTeardown.robot
Resource    ../Resources/Locators.robot
Resource    ../PageObjects/Keywords.robot
Resource    ../TestesCase/TesteOutlook.robot

*** Keywords ***
Mandar email completo
    Dado que eu realize o login
    Quando eu clico em novo email
    E preencho para quem
    E preencho o asssunto
    E preencher o corpo
    E clicar em enviar o email

Mandar email sem assunto
    Dado que eu realize o login
    Quando eu clico em novo email
    E preencho para quem
    E preencher o corpo
    E clicar em enviar o email
    E confirmar o envio     #
    Então deve aparecer uma imagem como evidência que o email foi enviado

Mandar email com destinatario invalido
    Dado que eu realize o login
    Quando eu clico em novo email
    E preencho para quem invalido
    E preencho o asssunto
    E preencher o corpo
    E clicar em enviar o email
    Então deve indicar um erro em volta do destinatário digitado

Mandar email sem destinatario
    Dado que eu realize o login
    Quando eu clico em novo email
    E preencho o asssunto
    E preencher o corpo
    E clicar em enviar o email
    Então deve indicar que é necessário um destinatário

Mandar email completo com cópia
    Dado que eu realize o login
    Quando eu clico em novo email
    E preencho para quem
    E clico no botão de adicionar cópia
    E preencho quem será colocado em cópia
    E preencho o asssunto
    E preencher o corpo
    E clicar em enviar o email

Mandar email completo com cópia oculta
    Dado que eu realize o login
    Quando eu clico em novo email
    E preencho para quem
    E clico no botão de adicionar cópia oculta
    E preencho quem será colocado em cópia oculta
    E preencho o asssunto
    E preencher o corpo
    E clicar em enviar o email


