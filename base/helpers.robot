***Settings***
Documentation           Keywords de utilidade comum

***Variables***
${tokenAcessoRC}        41E23E92-DA64-4263-B566-10DD7C93685F
${tokenAcessoPR}        3518FCAD-8A6B-4581-8772-9B5D2B535767
${urlRC}                https://rc-app.hiper.com.br/login-auto-hotsite/?admin=true&token=${tokenAcessoRC}
${urlPR}                https://app.hiper.com.br/login-auto-hotsite/?admin=true&token=${tokenAcessoPR}
${BROWSER}              edge
${timeToWait}           120

***Keywords***
Abrir navegador
    Open Browser                            ${urlPR}        ${BROWSER}
    Wait Until Element Is Visible           css=.first-layout
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot
    Close Browser