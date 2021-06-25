***Settings***
Documentation       Keywords referente as Rotas

***Keywords***
###Menu Login
Acessa a página de domínio
    Go To                               http://app.hiper.com.br/
    Wait Until Element Is Visible       xpath=//p[contains(text(), "Entre com a sua conta Hiper")]      ${timeToWait}

Acessa a página de login
    Go To                               http://junior.hiper.com.br/
    Wait Until Element Is Visible       xpath=//p[contains(text(), "Você está acessando a conta:")]     ${timeToWait}

#---------------------------------------------------------------------------------------------------------------------------

###Menu Cadastro
#Cliente
Acessa o menu clientes
    Go To                               https://app.hiper.com.br/clientes
    Wait Until Element Is Visible       xpath=//a[contains(text(), "Cadastrar cliente")]                ${timeToWait}
    
#Produto
Acessa o menu produtos
    Go To                               https://app.hiper.com.br/produtos
    Wait Until Element Is Visible       xpath=//a[contains(text(), "Adicionar produto")]                ${timeToWait}

#---------------------------------------------------------------------------------------------------------------------------

###Menu Vendas
#Faturamento
Acessa o menu faturamento
    Go To                               https://app.hiper.com.br/operacoes/faturamento
    Wait Until Element Is Visible       xpath=//p[contains(text(), "Finalizar venda")]                  ${timeToWait}

#---------------------------------------------------------------------------------------------------------------------------