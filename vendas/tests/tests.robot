***Settings***
Documentation       Casos de teste do menu Vendas

Resource            ../../base/base.robot

***Test Cases***
Faturamento interno e interestadual para PF e PJ, com produto com diferentes CSTs e CSOSNs
    Abrir navegador
    Acessa o menu faturamento
    Conectar no banco de dados
    Faturamento
    Desconectar do banco de dados
    Fechar navegador