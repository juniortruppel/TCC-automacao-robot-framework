***Settings***
Documentation           Ações da página de faturamento testando

***Keywords***
Acessa o menu faturamento
    Go To                               https://app.hiper.com.br/operacoes/faturamento
    Wait Until Element Is Visible       xpath=//p[contains(text(), "Finalizar venda")]                  ${timeToWait}
    
Faturamento
    FOR     ${nomeProduto}          ${nomeCliente}      IN
    #Faturamento interno para PF
    ...     ProdutoCST00CSOSN102    CliPFSC
    #...     ProdutoCST40CSOSN400    CliPFSC
    #...     ProdutoCST60CSOSN500    CliPFSC

    #Faturamento interestadual para PF
    #...     ProdutoCST00CSOSN102    CliPFSP
    #...     ProdutoCST40CSOSN400    CliPFSP

    #Faturamento interno para PJ
    #...     ProdutoCST00CSOSN101    CHOPARIA E PIZZARIA
    #...     ProdutoCST10CSOSN201    CHOPARIA E PIZZARIA
    #...     ProdutoCST10CSOSN202    CHOPARIA E PIZZARIA
    #...     ProdutoCST40CSOSN400    CHOPARIA E PIZZARIA
    #...     ProdutoCST60CSOSN500    CHOPARIA E PIZZARIA
    #...     ProdutoCST90CSOSN900    CHOPARIA E PIZZARIA

    #Faturamento interestadual para PJ
    #...     ProdutoCST00CSOSN101    elvismar jose ferreira
    #...     ProdutoCST10CSOSN201    elvismar jose ferreira
    #...     ProdutoCST10CSOSN202    elvismar jose ferreira
    #...     ProdutoCST40CSOSN400    elvismar jose ferreira
    ...     ProdutoCST90CSOSN900    elvismar jose ferreira
        Faturar produto "${nomeProduto}" para "${nomeCliente}"
        Pegar id da nota fiscal
        Verificar CST e CSOSN no XML
    END

Faturar produto "${nomeProduto}" para "${nomeCliente}"
    Set Suite Variable                  ${nomeProduto}
    Input Text                          css=input[name=pesquisa-para-faturamento]                               ${nomeCliente}
    Wait Until Element Is Visible       xpath=//p[contains(text(), "Clientes")]/..//tbody//td/p[contains(text(), "${nomeCliente}")]                              ${timeToWait}
    Click Element                       xpath=//p[contains(text(), "Clientes")]/..//tbody//td[1]
    Wait Until Element Is Visible       xpath=//div[contains(text(), "${nomeCliente}")]                      ${timeToWait}
    Input Text                          css=input[name=pesquisa-para-faturamento]                               ${nomeProduto}
    Wait Until Element Is Visible       xpath=//p[contains(text(), "Produtos")]/..//tbody//td/p[contains(text(), "${nomeProduto}")]                           ${timeToWait}
    Click Element                       xpath=//p[contains(text(), "${nomeProduto}")]
    Wait Until Element Is Visible       xpath=//span[contains(text(), "(Enter)")]/..                            ${timeToWait}
    Click Element                       xpath=//span[contains(text(), "(Enter)")]/..
    Wait Until Element Is Visible       xpath=//div[contains(@class, "informacoes-dos-itens com-subitens")]//tr/td[3][contains(text(),"${nomeProduto}")]      ${timeToWait}
    Click Element                       xpath=//p[contains(text(), "Finalizar venda")]/..
    Wait Until Element Is Visible       xpath=//p[contains(text(), "Meios de pagamentos")]                      ${timeToWait}
    Click Element                       xpath=//button[contains(text(), "Dinheiro")]
    Wait Until Element Is Visible       xpath=//span[contains(text(), "(ENTER)")]                               ${timeToWait}
    Click Element                       xpath=//span[contains(text(), "(ENTER)")]
    Wait Until Element Is Visible       xpath=//div[contains(@class, "meios-de-pagamentos")]//li/p[1]           ${timeToWait}
    Click Button                        xpath=//button[contains(text(), "Concluir e emitir nota fiscal")]
    Sleep       2
    Click Button                        xpath=//button[contains(text(), "Gerar nota fiscal")]
    Wait Until Element Is Visible       xpath=//h1[contains(text(), "Nota emitida com sucesso!")]               ${timeToWait}
    Capture Page Screenshot
    Acessa o menu faturamento

Pegar id da nota fiscal
    ${idNotaFiscal}=                    Query       SELECT TOP 1 id_nfe FROM Unife..nfe WHERE identificador_sistema = 126026 AND codigo_modelo_documento_fiscal = '55' AND serie_documento_fiscal = '13' ORDER BY data_emissao DESC

    ${tratandoIdNotaFiscal}=            Evaluate                            [x[0] for x in $idNotaFiscal]

    ${idNotaFiscalTratada}=             Convert To String                   ${tratandoIdNotaFiscal[0]}
    Set Global Variable                 ${idNotaFiscalTratada}