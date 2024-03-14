*** Settings ***
Resource    ../Resources/Locators.robot
Resource    ../TestesCase/TesteOutlook.robot
Resource    ../PageObjects/Mandar-Email.robot

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
    Click Element    ${INPUT ASSUNTO}

E preencher o corpo
    Click Element    ${INPUT CORPO}

E enviar o email
    Click Element    ${BOTAO ENVIAR EMAIL}
    Input Text    ${PREENCHER CORPO}    Olá, isso é um teste

E confirmar o envio
    Wait Until Page Contains Element    ${CONFIRMAR ENVIO}
    Sleep    1s
    Scroll Element Into View    ${CONFIRMAR ENVIO}
    Click Element    ${CONFIRMAR ENVIO}

Então deve aparecer uma imagem como evidência que o email foi enviado
    Wait Until Page Contains Element    ${IMAGEM EMAIL ENVIADO}
    Element Should Be Visible    ${IMAGEM EMAIL ENVIADO}

