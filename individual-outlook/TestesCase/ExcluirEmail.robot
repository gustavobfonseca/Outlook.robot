*** Settings ***
Resource    ../PageObjects/SetupTeardown.robot
Resource    ../Resources/Locators.robot
Resource    ../PageObjects/Keywords.robot
Resource    ../TestesCase/Login.robot

Test Teardown        Fechar Navegador

*** Test Cases ***
Apagar email da caixa de entrada
    [Tags]    Excluir
    Dado que eu realize o login
    Quando selecionar um email
    E clicar no icone de excluir
    Entao deve aparecer uma notificação que o email foi apagado
    E desfazer apagado    #É USADO APENAS PARA TESTES
                            # Sleep    5s

Apagar email com tecla delete
    [Tags]    Excluir
    Dado que eu realize o login
    Quando selecionar um email
    E pressiono a tecla "Delete"
    Entao deve aparecer uma notificação que o email foi apagado
    E desfazer apagado    #É USADO APENAS PARA TESTES
                            # Sleep    5s

Apagar email por mais ações
    [Tags]    Excluir
    Dado que eu realize o login
    Quando selecionar um email
    E clico em "Mais ações"
    E clico em "Excluir"
    Entao deve aparecer uma notificação que o email foi apagado
    E desfazer apagado    #É USADO APENAS PARA TESTES
                            # Sleep    5s

Apagar email dos rascunhos
    [Tags]    Excluir
    Dado que eu realize o login
    Quando eu clico nos rascunhos
    E seleciono um email 
    E clicar no icone de excluir
    Entao deve aparecer uma notificação que o email foi apagado
    E desfazer apagado    #É USADO APENAS PARA TESTES
                            # Sleep    5s

Apagar email do Lixo Eletrônico
    [Tags]    Excluir
    Dado que eu realize o login
    Quando eu clico no lixo eletronico
    E seleciono um email 
    E clicar no icone de excluir
    Entao deve aparecer uma notificação que o email foi apagado

Apagar arquivo morto
    [Tags]    Excluir
    Dado que eu realize o login
    Quando selecionar um email
    E clicar no icone de arquivar
    E clicar em arquivo morto
    E selecionar um arquivo morto
    E clicar no icone de excluir
    Entao deve aparecer uma notificação que o email foi apagado
    E desfazer apagado    #É USADO APENAS PARA TESTES
                            # Sleep    5s
