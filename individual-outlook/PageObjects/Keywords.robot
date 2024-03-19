*** Settings ***
Resource    ../Resources/Locators.robot
Resource    ../TestesCase/Login.robot
Resource    ../TestesCase/Pesquisar.robot
Resource    ../TestesCase/ExcluirEmail.robot
Resource    ../TestesCase/ResponderEmail.robot
Resource    ../TestesCase/MandarEmail.robot

*** Keywords ***    #REALIZAR LOGIN
Quando eu clico no botão iniciar sessão
     Click Element    ${BOTAO INICIAR SESSAO}

E mudar para nova aba
    Switch Window    NEW

E preencher email
    Wait Until Page Contains Element    ${INPUT_LOGIN}
    Input Text    ${INPUT_LOGIN}    gustav8Testes@outlook.com
E clico no botão avançar
    Wait Until Page Contains Element    ${BOTAO AVANCAR}
    Click Element    ${BOTAO AVANCAR}

E preencher senha
    Wait Until Page Contains Element    ${INPUT_SENHA}
    Input Password    ${INPUT_SENHA}    Teste123@

E clico no botão de confirmar login
    Wait Until Page Contains Element    ${BOTAO CONFIRMAR LOGIN}
    Click Element    ${BOTAO CONFIRMAR LOGIN}
Então deve aparecer o botão "novo email" como evidencia de que o login foi feito    Wait Until Page Contains Element    ${BOTAO_NOVO_EMAIL}
    Element Should Be Visible    ${BOTAO_NOVO_EMAIL}

Dado que eu realize o login
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


*** Keywords ***    #LOGIN SENHA ERRADA
E preencher senha incorreta
    Wait Until Page Contains Element    ${INPUT_SENHA}
    Input Password    ${INPUT_SENHA}    SenhaErrada

Então deve aparecer a mensagem de "senha incorreta"
    Wait Until Element Is Visible    ${MENSAGEM_ERRO_SENHA}

*** Keywords ***    #LOGIN EMAIL INEXISTENTE
E preencher email inexistente
    Wait Until Page Contains Element    ${INPUT_LOGIN}
    Input Text    ${INPUT_LOGIN}    loginErrado@outlook.com

Então deve aparecer a mensagem de "inexistente"
    Wait Until Element Is Visible    ${MENSAGEM_EMAIL_INEXISTENTE}
    Element Should Be Visible    ${MENSAGEM_EMAIL_INEXISTENTE}
*** Keywords ***    #LOGIN ALTERNATIVO
Quando eu rolar a tela para baixo
    Scroll Element Into View    ${DIV_ROLAMENTO_PAGINA}
    Scroll Element Into View    ${IMAGEM_TELA_INICIAL}

E clicar em iniciar sessão
    Element Should Be Visible    ${INICIAR_SESSAO}
    Click Element    ${INICIAR_SESSAO}


*** Keywords ***    #ENVIAR NOVO EMAIL
Quando eu clico em novo email
     Wait Until Page Contains Element    ${BOTAO_NOVO_EMAIL}
     Click Button    ${BOTAO_NOVO_EMAIL}

E preencho para quem
    Wait Until Page Contains Element    ${INPUT PARA}
    Click Element    ${INPUT PARA}
    Input Text    ${INPUT PARA}    gustav8Testes@outlook.com
    Press Keys    none    ENTER

E preencho o asssunto
    Wait Until Page Contains Element    ${DIV ASSUNTO}
    Double Click Element    ${DIV ASSUNTO}
    Wait Until Page Contains Element    ${Input ASSUNTO}
    Input Text    ${INPUT ASSUNTO}    QA

E preencher o corpo
    Click Element    ${INPUT CORPO}
    Input Text    ${PREENCHER CORPO}    Olá, isso é um teste

E clicar em enviar o email
    Click Element    ${BOTAO ENVIAR EMAIL}

E confirmar o envio
    Wait Until Page Contains Element    ${CONFIRMAR ENVIO}
    Sleep    1s
    Scroll Element Into View    ${CONFIRMAR ENVIO}
    Click Element    ${CONFIRMAR ENVIO}

Então deve aparecer uma imagem como evidência que o email foi enviado
    Wait Until Page Contains Element    ${IMAGEM EMAIL ENVIADO}
    Element Should Be Visible    ${IMAGEM EMAIL ENVIADO}

*** Keywords ***    #ENVIAR EMAIL COM DESTINATÁRIO INVÁLIDO
E preencho para quem invalido
    Wait Until Page Contains Element    ${INPUT PARA}
    Click Element    ${INPUT PARA}
    Input Text    ${INPUT PARA}    EmailInválido
    Press Keys    none    ENTER

Então deve indicar um erro em volta do destinatário digitado
    Wait Until Element Is Visible    ${ERRO_DESTINATARIO}
    Scroll Element Into View    ${ERRO_DESTINATARIO}

*** Keywords ***    #ENVIAR EMAIL SEM DESTINATÁRIO
Então deve indicar que é necessário um destinatário
    Wait Until Element Is Visible    ${ERRO_SEM_DESTINATARIO}
    
*** Keywords ***    #MANDAR EMAIL COMPLETO COM CÓPIA
E clico no botão de adicionar cópia
    Click Element    ${BOTAO_COPIA}
E preencho quem será colocado em cópia
    Wait Until Element Is Visible    ${INPUT_COM_COPIA}
    Input Text    ${INPUT_COM_COPIA}    gustav8Testes@outlook.com


*** Keywords ***    #ENVIAR EMAIL COMPLETO COM CÓPIA OCULTA
E clico no botão de adicionar cópia oculta
    Click Element    ${BOTAO_COPIA_OCULTA}
E preencho quem será colocado em cópia oculta
    # Wait Until Element Is Visible    ${INPUT_COM_COPIA_OCULTA}
    Click Element    ${INPUT_COM_COPIA_OCULTA}
    Input Text    ${INPUT_COM_COPIA_OCULTA}    gustav8Testes@outlook.com


*** Keywords ***    #REALIZAR PESQUISA  EM TODAS AS PASTAS
Quando eu clicar na barra de pesquisa
    Click Element    ${PESQUISA}

E preencho com o que quero pesquisar
    Input Text    ${PESQUISA}    Gustavo Pardinho

E pressionar "Enter" ou clicar no botão de pesquisa
    Press Keys    none    ENTER

Então o sistema deverá exibir os resultados relevantes que correspondam à palavra-chave
    Wait Until Element Is Visible    ${PRINCIPAIS RESULTADOS}
    Element Should Be Visible    ${PRINCIPAIS RESULTADOS}

*** Keywords ***    #REALIZAR PESQUISA NA CAIXA DE ENTRADA
E seleciono "Na caixa de entrada"
    Click Element    ${ABRIR_OPCOES_PESQUISA}
    Click Element    ${OPCAO_CAIXA_DE_ENTRADA}

*** Keywords ***    #REALIZAR PESQUISA EM RASCUNHOS
E seleciono "Rascunhos"
    Click Element    ${ABRIR_OPCOES_PESQUISA}
    Click Element    ${OPCAO_RASCUNHOS}

*** Keywords ***    #REALIZAR PESQUISA EM INTENS ENVIADOS
E seleciono "Itens Enviados"
    Click Element    ${ABRIR_OPCOES_PESQUISA}
    Click Element    ${OPCAO_ITENS_ENVIADOS}

*** Keywords ***    #REALIZAR PESQUISA EM ITENS EXCLUÍDOS
E seleciono "Itens Excluidos"
    Click Element    ${ABRIR_OPCOES_PESQUISA}
    Click Element    ${OPCAO_ITENS_EXCLUIDOS}

*** Keywords ***    #REALIZAR PESQUISA EM LIXOS ELETRÔNICOS
E seleciono "Lixo Eletrônico"
    Click Element    ${ABRIR_OPCOES_PESQUISA}
    Click Element    ${OPCAO_LIXO_ELETRONICO}


*** Keywords ***    #RESPONDER EMAIL NA CAIXA DE ENTRADA
 Quando abrir um email na caixa de entrada
    Press Keys    none       DOWN
    Press Keys    none       UP        
E pressionar a tecla R
    Press Keys       none       R
    # Click Element    ${BOTAO RESPONDER EMAIL}

E redigir a resposta no campo de texto
    Wait Until Element Is Visible    ${INPUT CORPO}
    Click Element    ${INPUT CORPO}
    Input Text    ${CORPO RESPOSTA}    Resposta teste

E clicar no botão "Enviar"
    Wait Until Element Is Visible    ${BOTAO ENVIAR EMAIL RESPOSTA}
    Click Button    ${BOTAO ENVIAR EMAIL RESPOSTA}

Então deve sumir o botão de enviar resposta como evidencia que a resposta foi enviada
    Element Should Not Be Visible   ${CORPO RESPOSTA}

*** Keywords ***
E clicar no botao de Responder
    Press Keys    none    R
    # Wait Until Element Is Visible    ${BOTAO RESPONDER EMAIL}
    # Scroll Element Into View    ${BOTAO RESPONDER EMAIL}
    # Click Element    ${BOTAO RESPONDER EMAIL}

*** Keywords ***
E clicar em opções do botão enviar
    Scroll Element Into View    ${OPCOES_ENVIAR}
    Click Element    ${OPCOES_ENVIAR}

E selecionar "Agendar enviar email"
    Wait Until Element Is Visible    ${BOTAO_AGENDAR_ENVIAR_EMAIL}
    Click Element    ${BOTAO_AGENDAR_ENVIAR_EMAIL}

E selecionar a opção 1 de agendar envio
    Wait Until Element Is Visible    ${AGENDAR_ENVIO_1}
    Click Element    ${AGENDAR_ENVIO_1}

E clicar em enviar agendamento
    Press Keys     none    TAB
    Press Keys     none    TAB
    Press Keys     none    ENTER
    # Wait Until Element Is Visible    ${BOTÃO_ENVIAR_AGENDAMENTO}
    # Click Element    ${BOTÃO_ENVIAR_AGENDAMENTO}

Então deve sumir o botão de enviar agendamento mostrando que foi enviado com sucesso
    Wait Until Element Is Not Visible    ${BOTÃO_ENVIAR_AGENDAMENTO}
*** Keywords ***
E selecionar a opção 2 de agendar envio
    Wait Until Element Is Visible    ${AGENDAR_ENVIO_2}
    Click Element    ${AGENDAR_ENVIO_2}
*** Keywords ***
E clicar na opção de enviar   
    Click Element    ${BOTÃO_ENVIAR}
Então deve sumir a opção de enviar, mostrando que foi enviado com sucesso
    Wait Until Element Is Not Visible    ${BOTÃO_ENVIAR}
*** Keywords ***
E clicar no ícone de uma nova janela
    Wait Until Element Is Visible    ${ICONE_NOVA_ABA}
    Click Element    ${ICONE_NOVA_ABA}
E redigir a resposta no campo de texto da nova janela
        # Wait Until Element Is Visible    ${DIV_NOVA_ABA}
        # Click Element    ${DIV_NOVA_ABA}
        Wait Until Element Is Visible    ${INPUT_TEXTO_NOVA_ABA}
        Input Text    ${INPUT_TEXTO_NOVA_ABA}    Resposta pela nova aba :P
    
E clicar no botão "Enviar" da nova janela
    Press Keys    none    Crtrl+Enter


Então deve sumir a nova janela como evidencia que a resposta foi enviada
    Wait Until Element Is Not Visible    ${INPUT_TEXTO_NOVA_ABA}

*** Keywords ***    #APAGAR EMAIL NA CAIXA DE ENTRADA
Quando selecionar um email
    Press Keys    none       UP
   
E clicar no icone de excluir
    Click Element    ${BOTAO APAGAR}

Entao deve aparecer uma notificação que o email foi apagado
    Wait Until Element Is Visible    ${NOTIFICACAO}
    Element Should Be Visible    ${NOTIFICACAO}

E desfazer apagado
    Click Element    ${DESFAZER APAGADO}

*** Keywords ***    #APAGAR EMAIL NA CAIXA DE ENTRADA COM TECLA DELETE
E pressiono a tecla "Delete"
    Press Keys    none    DELETE

*** Keywords ***    #APAGAR EMAIL DA CAIXA DE ENTRADA POR "MAIS OPÇÕES"
E clico em "Mais ações"
    Wait Until Element Is Visible    ${MAIS_ACOES}
    Click Element    ${MAIS_ACOES}

E clico em "Excluir"
    Click Element    ${MAIS_ACOES_EXCLUIR}

*** Keywords ***    #APAGAR EMAIL DOS RASCUNHOS
Quando eu clico nos rascunhos
    Wait Until Element Is Visible    ${RASCUNHO}
    Click Element    ${RASCUNHO}

E seleciono um email 
        Press Keys    none       DOWN
        Press Keys    none       UP

*** Keywords ***    #Apagar email do Lixo Eletrônico
Quando eu clico no lixo eletronico
    Wait Until Element Is Visible    ${LIXO_ELETRONICO}
    Click Element    ${LIXO_ELETRONICO}
    

*** Keywords ***    #APAGAR EMAIL DE ARQUIVO MORTO
E clicar no icone de arquivar
    Wait Until Element Is Visible    ${ICONE_ARQUIVAR}
    Click Element    ${ICONE_ARQUIVAR}
E clicar em arquivo morto
    Scroll Element Into View    ${ARQUIVO_MORTO}
    Click Element    ${ARQUIVO_MORTO}
E selecionar um arquivo morto
    Press Keys    none       DOWN
    Press Keys    none       UP





