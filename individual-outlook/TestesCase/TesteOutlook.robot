*** Settings ***
Resource    ../PageObjects/SetupTeardown.robot
Resource    ../Resources/Locators.robot
Resource   ../PageObjects/Keywords.robot
Resource    ../PageObjects/Login.robot
Resource    ../PageObjects/MandarEmail.robot
Resource    ../PageObjects/Pesquisar.robot

Test Teardown        Fechar Navegador

*** Test Cases ***
Realizar Login
    # Login 
    # Login senha incorreta
    # Login email inexistente
    # Login alternativo
    # Login alternativo com senha incorreta
    Login alternativo com email inexistente

Mandar novo email
    # Mandar email completo
    # Mandar email sem assunto
    # Mandar email sem destinatario
    # Mandar email com destinatario invalido
    # Mandar email completo com cópia
    Mandar email completo com cópia oculta

Pesquisar email
    # Pesquisar email em todas as pastas
    # Pesquisar email em itens enviados
    # Pesquisar email na caixa de entrada
    # Pesquisar email no lixo eletrônico
    # Pesquisar email nos rascunhos
    Pesquisar email nos ítens excluidos

Responder email
    Dado que eu realize o login
    Quando abrir um email na caixa de entrada    #É UM EMAIL FIXO
    E clicar no botão "Responder"
    E redigir a resposta no campo de texto
    E clicar no botão "Enviar"
    Então deve sumir o botão de enviar resposta como evidencia que a resposta foi enviada

Excluir email
    Dado que eu realize o login
    Quando selecionar um email
    E pressionar a tecla "Delete" ou clicar no icone de excluir
    Entao deve aparecer uma notificação que o email foi apagado
    E desfazer apagado    #É USADO APENAS PARA TESTES
                            # Sleep    5s



