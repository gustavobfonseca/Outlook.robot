*** Settings ***
Resource    ../PageObjects/SetupTeardown.robot
Resource    ../Resources/Locators.robot
Resource    ../PageObjects/Keywords.robot
Resource    ../TestesCase/TesteOutlook.robot

*** Keywords ***
Pesquisar email
    Dado que eu realize o login
    Quando eu clicar na barra de pesquisa
    E preencho com o que quero pesquisar
    E pressionar "Enter" ou clicar no botão de pesquisa
    Sleep    200s
    Então o sistema deverá exibir os resultados relevantes que correspondam à palavra-chave