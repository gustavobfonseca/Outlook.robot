*** Settings ***
Resource    ../Resources/Locators.robot
Resource    ../TestesCase/TesteOutlook.robot





*** Keywords ***    #REALIZAR PESQUISA
Quando eu clicar na barra de pesquisa
    Click Element    ${PESQUISA}

E preencho com o que quero pesquisar
    Input Text    ${PESQUISA}    Gustavo Pardinho

E pressionar "Enter" ou clicar no botão de pesquisa
    Press Keys    none    ENTER

Então o sistema deverá exibir os resultados relevantes que correspondam à palavra-chave
    Wait Until Element Is Visible    ${PRINCIPAIS RESULTADOS}
    Element Should Be Visible    ${PRINCIPAIS RESULTADOS}


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

*** Keywords ***    #CRIAR NOVA PASTA
Quando clicar em "criar nova pasta"
    Scroll Element Into View    ${CRIAR PASTA}
    Click Element    ${CRIAR PASTA}
E preencher com o nome da nova pasta
    # Execute Javascript    return    CalendarioAtual()
    # Wait Until Element Is Visible    ${INPUT PASTA}    
    Input Text     ${INPUT PASTA}    OLA

E pressionar a tecla "Enter"
    Press Keys    none    ENTER

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





