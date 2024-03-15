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




${PESQUISA}    id=topSearchInput
${PRINCIPAIS RESULTADOS}    //*[@id="MailList"]

${DIV EMAIL}    id=AQAAAAAAAQABAAAAAZcBfAAAAAA=
${BOTAO RESPONDER EMAIL}    //*[@id="ConversationReadingPaneContainer"]/div[2]/div/div/div[1]/div/div/div/div/div[6]/button[1]
${CORPO RESPOSTA}    //*[@id="contentDiv_0"]
${BOTAO ENVIAR EMAIL RESPOSTA}    //*[@id="docking_InitVisiblePart_0"]/div/div[5]/div[4]/div[1]/div/div/span/button[1]
${CORPO DA PAGINA}    //*[@id="ConversationReadingPaneContainer"]/div[2]/div/div



${CRIAR PASTA}    //*[@id="folderPaneDroppableContainer"]/div/div[3]/div/div/div[12]/div
${NOME DA PASTA}    Execute Javascript    return    CalendarioAtual()   
${INPUT PASTA}    //*[@id="folderPaneDroppableContainer"]/div/div[3]/div/div/span


${BOTAO OUTROS}          css:span.ms-Pivot-text
${NOTIFICACAO}        //*[@id="Pular para lista de mensagens-region"]/div[3]/div/div
${BOTAO APAGAR}    //*[@id="innerRibbonContainer"]/div[1]/div/div/div/div[2]/div/div/span/button[1]
${DESFAZER APAGADO}    //*[@id="Pular para lista de mensagens-region"]/div[3]/div/div/div[2]/button[1]

${IMAGEM_TELA_INICIAL}    id=highlight-uid08e6
${INICIAR_SESSAO}    //*[@id="hero-cta-oc5ff4e"]/div[2]/div/nav/div[2]/ul/li[1]/div/a
${DIV_ROLAMENTO_PAGINA}    //*[@id="feature-ocf3ac"]/div/div/div[1]/div