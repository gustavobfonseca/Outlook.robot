*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/SetupTeardown.robot
Resource    ../PageObjects/Keywords.robot

*** Variables ***
${URL}    https://outlook.com

${BOTAO INICIAR SESSAO}       //*[@id="feature-oc387eee"]/div/div/div[1]/div/div[3]/div[1]/a
${INPUT_LOGIN}    id=i0116
${INPUT_SENHA}   id=i0118
${BOTAO AVANCAR}    id=idSIButton9
${BOTAO CONFIRMAR LOGIN}    id=acceptButton
${BOTAO_NOVO_EMAIL}    //*[@id="innerRibbonContainer"]/div[1]/div/div/div/div[1]/div/div/span/button[1]

${MENSAGEM_ERRO_SENHA}    id=i0118Error

${MENSAGEM_EMAIL_INEXISTENTE}    id=i0116Error









${INPUT PARA}    //*[@id="docking_InitVisiblePart_0"]/div/div[3]/div[1]/div/div[3]/div/div/div[1]
${INPUT CC}    //*[@id="docking_InitVisiblePart_0"]/div/div[3]/div[1]/div/div[6]/div/div/div[1]
${DIV ASSUNTO}    //*[@id="docking_InitVisiblePart_0"]/div/div[3]/div[2]/div[2]
${INPUT ASSUNTO}    //input[@placeholder="Adicionar um assunto"] 
${INPUT CORPO}    id=editorParent_1
${PREENCHER CORPO}    //*[@id="contentDiv_0"]
${BOTAO ENVIAR EMAIL}    //*[@id="docking_InitVisiblePart_0"]/div/div[2]/div[1]/div/span/button[1] 
${CONFIRMAR ENVIO}    id=ok-1
${IMAGEM EMAIL ENVIADO}    //*[@id="ReadingPaneContainerId"]/div/div/div/div/div/div[1]

${ERRO_DESTINATARIO}    id=REK000000
${ERRO_SEM_DESTINATARIO}    //*[@id="docking_InitVisiblePart_0"]/div/div[1]

${BOTAO_COPIA}    //*[@id="docking_InitVisiblePart_0"]/div/div[3]/div[1]/div/div[1]/button[1]
${INPUT_COM_COPIA}   //*[@id="docking_InitVisiblePart_0"]/div/div[3]/div[1]/div/div[6]/div/div/div[1]

${BOTAO_COPIA_OCULTA}    //*[@id="docking_InitVisiblePart_0"]/div/div[3]/div[1]/div/div[1]/button[2]
${INPUT_COM_COPIA_OCULTA}    //*[@id="docking_InitVisiblePart_0"]/div/div[3]/div[1]/div/div[6]/div/div/div[1]

${OPCOES_ENVIAR}    //*[@id="docking_InitVisiblePart_0"]/div/div[5]/div[4]/div[1]/div/div/span/button[2]
${BOTAO_AGENDAR_ENVIAR_EMAIL}   //span[text()="Agendar enviar email"]
${AGENDAR_ENVIO_1}   //div[text()="Amanhã manhã"]
${BOTÃO_ENVIAR_AGENDAMENTO}    //*[@id="ModalFocusTrapZone25246"]/div[2]/div/div[2]/div[2]/div/span[1]/button/span

${AGENDAR_ENVIO_2}    //div[text()="Domingo manhã"]

${BOTÃO_ENVIAR}    //span[text()="Enviar"]

${ICONE_NOVA_ABA}    id=popoutCompose
${INPUT_TEXTO_NOVA_ABA}    //*[@id="contentDiv_0"]/div[1]










${PESQUISA}    id=topSearchInput
${PRINCIPAIS RESULTADOS}    //*[@id="MailList"]

${ABRIR_OPCOES_PESQUISA}    //*[@id="searchScopeButtonId"]/span[2]
${OPCAO_CAIXA_DE_ENTRADA}   //*[@id="searchScopeButtonId-list1"]/span

${OPCAO_RASCUNHOS}   //*[@id="searchScopeButtonId-list2"]/span

${OPCAO_ITENS_ENVIADOS}   //*[@id="searchScopeButtonId-list3"]/span

${OPCAO_ITENS_EXCLUIDOS}   //*[@id="searchScopeButtonId-list4"]/span

${OPCAO_LIXO_ELETRONICO}   //*[@id="searchScopeButtonId-list4"]/span




${DIV_EMAIL}    //*[@id="AQAAAAZA7foBAAAABkDyXgAAAAA="]/div/div/div[2]
${BOTAO RESPONDER EMAIL}    //*[@id="ConversationReadingPaneContainer"]/div[2]/div/div[2]/div[1]/div/div/div/div/div[6]/button[1]
${CORPO RESPOSTA}    //*[@id="contentDiv_0"]
${BOTAO ENVIAR EMAIL RESPOSTA}    //*[@id="docking_InitVisiblePart_0"]/div/div[5]/div[4]/div[1]/div/div/span/button[1]
${CORPO DA PAGINA}    //*[@id="ConversationReadingPaneContainer"]/div[2]/div/div




${BOTAO OUTROS}          css:span.ms-Pivot-text
${NOTIFICACAO}        //*[@id="Pular para lista de mensagens-region"]/div[3]/div/div
${BOTAO APAGAR}    //*[@id="innerRibbonContainer"]/div[1]/div/div/div/div[2]/div/div/span/button[1]
${DESFAZER APAGADO}    //*[@id="Pular para lista de mensagens-region"]/div[3]/div/div/div[2]/button[1]

${IMAGEM_TELA_INICIAL}    id=highlight-uid08e6
${INICIAR_SESSAO}    //*[@id="hero-cta-oc5ff4e"]/div[2]/div/nav/div[2]/ul/li[1]/div/a
${DIV_ROLAMENTO_PAGINA}    //*[@id="feature-ocf3ac"]/div/div/div[1]/div



${MAIS_ACOES}    //*[@id="ConversationReadingPaneContainer"]/div/div/div[2]/div[1]/div/div/div/div/div[1]/div[2]/div[2]/div/div/div[3]/div/button
${MAIS_ACOES_EXCLUIR}    //*[@id="id__345-menu"]/div/ul/li[5]/button/div/span


${RASCUNHO}    //*[@id="folderPaneDroppableContainer"]/div/div[3]/div/div/div[3]/div

${LIXO_ELETRONICO}    //*[@id="folderPaneDroppableContainer"]/div/div[3]/div/div/div[2]/div

${ICONE_ARQUIVAR}    id=505

${ARQUIVO_MORTO}    //*[@id="folderPaneDroppableContainer"]/div/div[3]/div/div/div[6]/div