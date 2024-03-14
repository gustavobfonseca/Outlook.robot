*** Settings ***
Resource    ../Resources/Locators.robot
Resource    ../TestesCase/TesteOutlook.robot
Resource    ../PageObjects/Login.robot


*** Keywords ***    # REALIZAR LOGIN
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
*** Keywords ***    # LOGIN SENHA ERRADA
E preencher senha incorreta
    Wait Until Page Contains Element    ${INPUT_SENHA}
    Input Password    ${INPUT_SENHA}    SenhaErrada

Então deve aparecer a mensagem de "senha incorreta"
    Wait Until Element Is Visible    ${MENSAGEM_ERRO_SENHA}

*** Keywords ***    # LOGIN EMAIL INEXISTENTE
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
