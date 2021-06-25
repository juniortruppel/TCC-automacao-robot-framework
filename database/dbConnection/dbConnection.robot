***Settings***     
Documentation           Arquivo de conexão com o banco de dados

***Keywords***
Conectar no banco de dados
    Connect To Database                    pymssql     ${gestaoProdução.name}       ${gestaoProdução.user}      ${gestaoProdução.password}      ${gestaoProdução.host}              ${gestaoProdução.port}
    #Connect To Database                    pymssql     ${gestaoRC.name}             ${gestaoRC.user}            ${gestaoRC.password}            ${gestaoRC.host}                    ${gestaoRC.port}
    #Connect To Database                    dbapiModuleName=psycopg2                 dbName=${portalRC.name}     dbUsername=${portalRC.user}     dbPassword=${portalRC.password}     dbHost=${portalRC.host}    dbPort=${portalRC.port}
    #Connect To Database                    pymssql     ${bancoLocal.name}           ${bancoLocal.user}          ${bancoLocal.password}          ${bancoLocal.host}                  ${bancoLocal.port}

Desconectar do banco de dados
    Disconnect From Database