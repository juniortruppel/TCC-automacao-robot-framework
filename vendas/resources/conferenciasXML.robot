***Settings***
Documentation           Keywords de conferencias de XML

***Keywords***
Verificar CST e CSOSN no XML
    ${buscaCSOSN}=                      Get Substring                       ${nomeProduto}     -3
    Set Suite Variable                  ${buscaCSOSN}
    Run Keyword If                      ${buscaCSOSN} == 101                Verificar CST e CSOSN no XML quando a CSOSN for 101
    Run Keyword If                      ${buscaCSOSN} == 102                Verificar CST e CSOSN no XML quando a CSOSN for 102
    Run Keyword If                      ${buscaCSOSN} == 201                Verificar CST e CSOSN no XML quando a CSOSN for 201
    Run Keyword If                      ${buscaCSOSN} == 202                Verificar CST e CSOSN no XML quando a CSOSN for 202
    Run Keyword If                      ${buscaCSOSN} == 400                Verificar CST e CSOSN no XML quando a CSOSN for 400
    Run Keyword If                      ${buscaCSOSN} == 500                Verificar CST e CSOSN no XML quando a CSOSN for 500
    Run Keyword If                      ${buscaCSOSN} == 900                Verificar CST e CSOSN no XML quando a CSOSN for 900

Verificar CST e CSOSN no XML quando a CSOSN for 101
    ${cstXML}=                          Query                               WITH XMLNAMESPACES(DEFAULT 'http://www.portalfiscal.inf.br/nfe') SELECT xml_nfe.value('(//imposto/ICMS/ICMSSN101/orig)[1]', 'VARCHAR(120)') FROM Unife..nfe (NOLOCK) WHERE identificador_sistema = 126026 AND codigo_modelo_documento_fiscal = '55' AND serie_documento_fiscal = '13' AND id_nfe = '${idNotaFiscalTratada}'
    ${csosnXML}=                        Query                               WITH XMLNAMESPACES(DEFAULT 'http://www.portalfiscal.inf.br/nfe') SELECT xml_nfe.value('(//imposto/ICMS/ICMSSN101/CSOSN)[1]', 'VARCHAR(120)') FROM Unife..nfe (NOLOCK) WHERE identificador_sistema = 126026 AND codigo_modelo_documento_fiscal = '55' AND serie_documento_fiscal = '13' AND id_nfe = '${idNotaFiscalTratada}'

    Trata CST "${cstXML}" e CSOSN "${csosnXML}"

    Should Be Equal                     ${cstTratadaXML}                     0
    Should Be Equal                     ${csosnTratadaXML}                   ${buscaCSOSN}
    Capture Page Screenshot

Verificar CST e CSOSN no XML quando a CSOSN for 102
    ${cstXML}=                          Query                               WITH XMLNAMESPACES(DEFAULT 'http://www.portalfiscal.inf.br/nfe') SELECT xml_nfe.value('(//imposto/ICMS/ICMSSN102/orig)[1]', 'VARCHAR(120)') FROM Unife..nfe (NOLOCK) WHERE identificador_sistema = 126026 AND codigo_modelo_documento_fiscal = '55' AND serie_documento_fiscal = '13' AND id_nfe = '${idNotaFiscalTratada}'
    ${csosnXML}=                        Query                               WITH XMLNAMESPACES(DEFAULT 'http://www.portalfiscal.inf.br/nfe') SELECT xml_nfe.value('(//imposto/ICMS/ICMSSN102/CSOSN)[1]', 'VARCHAR(120)') FROM Unife..nfe (NOLOCK) WHERE identificador_sistema = 126026 AND codigo_modelo_documento_fiscal = '55' AND serie_documento_fiscal = '13' AND id_nfe = '${idNotaFiscalTratada}'

    Trata CST "${cstXML}" e CSOSN "${csosnXML}"

    Should Be Equal                     ${cstTratadaXML}                     0
    Should Be Equal                     ${csosnTratadaXML}                   ${buscaCSOSN}

Verificar CST e CSOSN no XML quando a CSOSN for 201
    ${cstXML}=                          Query                               WITH XMLNAMESPACES(DEFAULT 'http://www.portalfiscal.inf.br/nfe') SELECT xml_nfe.value('(//imposto/ICMS/ICMSSN201/orig)[1]', 'VARCHAR(120)') FROM Unife..nfe (NOLOCK) WHERE identificador_sistema = 126026 AND codigo_modelo_documento_fiscal = '55' AND serie_documento_fiscal = '13' AND id_nfe = '${idNotaFiscalTratada}'
    ${csosnXML}=                        Query                               WITH XMLNAMESPACES(DEFAULT 'http://www.portalfiscal.inf.br/nfe') SELECT xml_nfe.value('(//imposto/ICMS/ICMSSN201/CSOSN)[1]', 'VARCHAR(120)') FROM Unife..nfe (NOLOCK) WHERE identificador_sistema = 126026 AND codigo_modelo_documento_fiscal = '55' AND serie_documento_fiscal = '13' AND id_nfe = '${idNotaFiscalTratada}'

    Trata CST "${cstXML}" e CSOSN "${csosnXML}"

    Should Be Equal                     ${cstTratadaXML}                     0
    Should Be Equal                     ${csosnTratadaXML}                   ${buscaCSOSN}

Verificar CST e CSOSN no XML quando a CSOSN for 202
    ${cstXML}=                          Query                               WITH XMLNAMESPACES(DEFAULT 'http://www.portalfiscal.inf.br/nfe') SELECT xml_nfe.value('(//imposto/ICMS/ICMSSN202/orig)[1]', 'VARCHAR(120)') FROM Unife..nfe (NOLOCK) WHERE identificador_sistema = 126026 AND codigo_modelo_documento_fiscal = '55' AND serie_documento_fiscal = '13' AND id_nfe = '${idNotaFiscalTratada}'
    ${csosnXML}=                        Query                               WITH XMLNAMESPACES(DEFAULT 'http://www.portalfiscal.inf.br/nfe') SELECT xml_nfe.value('(//imposto/ICMS/ICMSSN202/CSOSN)[1]', 'VARCHAR(120)') FROM Unife..nfe (NOLOCK) WHERE identificador_sistema = 126026 AND codigo_modelo_documento_fiscal = '55' AND serie_documento_fiscal = '13' AND id_nfe = '${idNotaFiscalTratada}'

    Trata CST "${cstXML}" e CSOSN "${csosnXML}"

    Should Be Equal                     ${cstTratadaXML}                     0
    Should Be Equal                     ${csosnTratadaXML}                   ${buscaCSOSN}

Verificar CST e CSOSN no XML quando a CSOSN for 400
    ${cstXML}=                          Query                               WITH XMLNAMESPACES(DEFAULT 'http://www.portalfiscal.inf.br/nfe') SELECT xml_nfe.value('(//imposto/ICMS/ICMSSN102/orig)[1]', 'VARCHAR(120)') FROM Unife..nfe (NOLOCK) WHERE identificador_sistema = 126026 AND codigo_modelo_documento_fiscal = '55' AND serie_documento_fiscal = '13' AND id_nfe = '${idNotaFiscalTratada}'
    ${csosnXML}=                        Query                               WITH XMLNAMESPACES(DEFAULT 'http://www.portalfiscal.inf.br/nfe') SELECT xml_nfe.value('(//imposto/ICMS/ICMSSN102/CSOSN)[1]', 'VARCHAR(120)') FROM Unife..nfe (NOLOCK) WHERE identificador_sistema = 126026 AND codigo_modelo_documento_fiscal = '55' AND serie_documento_fiscal = '13' AND id_nfe = '${idNotaFiscalTratada}'

    Trata CST "${cstXML}" e CSOSN "${csosnXML}"

    Should Be Equal                     ${cstTratadaXML}                     0
    Should Be Equal                     ${csosnTratadaXML}                   ${buscaCSOSN}

Verificar CST e CSOSN no XML quando a CSOSN for 500
    ${cstXML}=                          Query                               WITH XMLNAMESPACES(DEFAULT 'http://www.portalfiscal.inf.br/nfe') SELECT xml_nfe.value('(//imposto/ICMS/ICMSSN500/orig)[1]', 'VARCHAR(120)') FROM Unife..nfe (NOLOCK) WHERE identificador_sistema = 126026 AND codigo_modelo_documento_fiscal = '55' AND serie_documento_fiscal = '13' AND id_nfe = '${idNotaFiscalTratada}'
    ${csosnXML}=                        Query                               WITH XMLNAMESPACES(DEFAULT 'http://www.portalfiscal.inf.br/nfe') SELECT xml_nfe.value('(//imposto/ICMS/ICMSSN500/CSOSN)[1]', 'VARCHAR(120)') FROM Unife..nfe (NOLOCK) WHERE identificador_sistema = 126026 AND codigo_modelo_documento_fiscal = '55' AND serie_documento_fiscal = '13' AND id_nfe = '${idNotaFiscalTratada}'

    Trata CST "${cstXML}" e CSOSN "${csosnXML}"

    Should Be Equal                     ${cstTratadaXML}                     0
    Should Be Equal                     ${csosnTratadaXML}                   ${buscaCSOSN}
    
Verificar CST e CSOSN no XML quando a CSOSN for 900
    ${cstXML}=                          Query                               WITH XMLNAMESPACES(DEFAULT 'http://www.portalfiscal.inf.br/nfe') SELECT xml_nfe.value('(//imposto/ICMS/ICMSSN900/orig)[1]', 'VARCHAR(120)') FROM Unife..nfe (NOLOCK) WHERE identificador_sistema = 126026 AND codigo_modelo_documento_fiscal = '55' AND serie_documento_fiscal = '13' AND id_nfe = '${idNotaFiscalTratada}'
    ${csosnXML}=                        Query                               WITH XMLNAMESPACES(DEFAULT 'http://www.portalfiscal.inf.br/nfe') SELECT xml_nfe.value('(//imposto/ICMS/ICMSSN900/CSOSN)[1]', 'VARCHAR(120)') FROM Unife..nfe (NOLOCK) WHERE identificador_sistema = 126026 AND codigo_modelo_documento_fiscal = '55' AND serie_documento_fiscal = '13' AND id_nfe = '${idNotaFiscalTratada}'

    Trata CST "${cstXML}" e CSOSN "${csosnXML}"

    Should Be Equal                     ${cstTratadaXML}                     0
    Should Be Equal                     ${csosnTratadaXML}                   ${buscaCSOSN}



Trata CST "${cstXML}" e CSOSN "${csosnXML}"
    ${tratandoCstXML}=                  Evaluate                            [x[0] for x in $cstXML]
    ${tratandoCsosnXML}=                Evaluate                            [x[0] for x in $csosnXML]

    ${cstTratadaXML}=                   Remove String                       ${tratandoCstXML[0]}            [
    ${csosnTratadaXML}=                 Remove String                       ${tratandoCsosnXML[0]}          [
    Set Suite Variable                  ${cstTratadaXML}
    Set Suite Variable                  ${csosnTratadaXML}