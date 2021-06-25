***Settings***
Documentation           Keywords de utilidade comum

***Variables***
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