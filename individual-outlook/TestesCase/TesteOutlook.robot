*** Settings ***
Resource    ../PageObjects/SetupTeardown.robot
Resource    ../Resources/Locators.robot
Resource   ../PageObjects/Keywords.robot
Resource    ../PageObjects/Login.robot

Test Teardown        Fechar Navegador

*** Test Cases ***
Realizar Login
    Login 

Mandar novo email
    Dado que eu realize o login
    Quando eu clico em novo email
    E preencho para quem
    E preencher o corpo
    E enviar o email
    E confirmar o envio     #
    Então deve aparecer uma imagem como evidência que o email foi enviado

Pesquisar email
    Dado que eu realize o login
    Quando eu clicar na barra de pesquisa
    E preencho com o que quero pesquisar
    E pressionar "Enter" ou clicar no botão de pesquisa
    Então o sistema deverá exibir os resultados relevantes que correspondam à palavra-chave

Responder email
    Dado que eu realize o login
    Quando abrir um email na caixa de entrada    #É UM EMAIL FIXO
    E clicar no botão "Responder"
    E redigir a resposta no campo de texto
    E clicar no botão "Enviar"
    Então deve sumir o botão de enviar resposta como evidencia que a resposta foi enviada
   
# Criar pastas
#     Dado que eu realize o login
#     Quando clicar em "criar nova pasta"
#     E preencher com o nome da nova pasta
#     E pressionar a tecla "Enter"    

Excluir email
    Dado que eu realize o login
    Quando selecionar um email
    E pressionar a tecla "Delete" ou clicar no icone de excluir
    Entao deve aparecer uma notificação que o email foi apagado
    E desfazer apagado    #É USADO APENAS PARA TESTES
                            # Sleep    5s



