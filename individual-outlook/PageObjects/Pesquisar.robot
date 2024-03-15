*** Settings ***
Resource    ../PageObjects/SetupTeardown.robot
Resource    ../Resources/Locators.robot
Resource    ../PageObjects/Keywords.robot
Resource    ../TestesCase/TesteOutlook.robot

*** Keywords ***
Pesquisar email em todas as pastas
    Dado que eu realize o login
    Quando eu clicar na barra de pesquisa
    E preencho com o que quero pesquisar
    E pressionar "Enter" ou clicar no botão de pesquisa
    Então o sistema deverá exibir os resultados relevantes que correspondam à palavra-chave

Pesquisar email na caixa de entrada
    Dado que eu realize o login
    Quando eu clicar na barra de pesquisa
    E preencho com o que quero pesquisar
    E seleciono "Na caixa de entrada"
    Então o sistema deverá exibir os resultados relevantes que correspondam à palavra-chave
    
Pesquisar email nos rascunhos
    Dado que eu realize o login
    Quando eu clicar na barra de pesquisa
    E preencho com o que quero pesquisar
    E seleciono "Rascunhos"
    Então o sistema deverá exibir os resultados relevantes que correspondam à palavra-chave

Pesquisar email em itens enviados
    Dado que eu realize o login
    Quando eu clicar na barra de pesquisa
    E preencho com o que quero pesquisar
    E seleciono "Itens Enviados"
    Então o sistema deverá exibir os resultados relevantes que correspondam à palavra-chave

Pesquisar email nos ítens excluidos
    Dado que eu realize o login
    Quando eu clicar na barra de pesquisa
    E preencho com o que quero pesquisar
    E seleciono "Itens Excluidos"
    Então o sistema deverá exibir os resultados relevantes que correspondam à palavra-chave

Pesquisar email no lixo eletrônico
    Dado que eu realize o login
    Quando eu clicar na barra de pesquisa
    E preencho com o que quero pesquisar
    E seleciono "Lixo Eletrônico"
    Então o sistema deverá exibir os resultados relevantes que correspondam à palavra-chave