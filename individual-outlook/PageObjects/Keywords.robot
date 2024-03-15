*** Settings ***
Resource    ../Resources/Locators.robot
Resource    ../TestesCase/TesteOutlook.robot

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
    Login
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

*** Keywords ***
E seleciono "Rascunhos"
    Click Element    ${ABRIR_OPCOES_PESQUISA}
    Click Element    ${OPCAO_RASCUNHOS}

*** Keywords ***
E seleciono "Itens Enviados"
    Click Element    ${ABRIR_OPCOES_PESQUISA}
    Click Element    ${OPCAO_ITENS_ENVIADOS}

*** Keywords ***
E seleciono "Itens Excluidos"
    Click Element    ${ABRIR_OPCOES_PESQUISA}
    Click Element    ${OPCAO_ITENS_EXCLUIDOS}

*** Keywords ***
E seleciono "Lixo Eletrônico"
    Click Element    ${ABRIR_OPCOES_PESQUISA}
    Click Element    ${OPCAO_LIXO_ELETRONICO}


*** Keywords ***    #RESPONDER EMAIL
 Quando abrir um email na caixa de entrada
     Scroll Element Into View    ${DIV EMAIL}
     Click Element    ${DIV EMAIL}

E clicar no botão "Responder"
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


*** Keywords ***    #APAGAR EMAILS


Quando selecionar um email
    Press Keys    none       DOWN
    Press Keys    none       UP
   
E pressionar a tecla "Delete" ou clicar no icone de excluir
    Click Element    ${BOTAO APAGAR}
    # Press Keys    none    Delete

Entao deve aparecer uma notificação que o email foi apagado
    Wait Until Element Is Visible    ${NOTIFICACAO}
    Element Should Be Visible    ${NOTIFICACAO}

E desfazer apagado
    Click Element    ${DESFAZER APAGADO}




