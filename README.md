#Repositório para fins acadêmicos.

As váriaveis de conexão ao banco de dados e de acesso ao sistema NÃO serão disponiilizadas, visto que comprometeria a segurança do sistema e a infraestrutura do mesmo.
________________________________________

**Estrutura do Projeto:**

Pasta base
- base.robot (Base principal do projeto, onde são importadas as bibliotecas, e tem o caminho de todos os outros arquivos .robot, se um novo arquivo for criado, deve ser instanciado nesse arquivo base.robot.)
- rotas.robot (Responsável por acessar determinada rota/caminho de determinada página do Hiper gestão)
- helpers.robot (Keywords de uso comum entre cenários [ex.: Acesso a home do gestão])

**Estrutura do código:**

Utilizado o padrão Page Object.

Foi feito a divisão por menos e submenus do Hiper Gestão (ex: cadastros/clientes, vendas/faturamento, etc).

No mesmo diretório da pasta "resource", existe a pasta "tests" que contém o arquivo tests.robot, é nele que temos os casos de teste deste menu "faturamento", e ele é o arquivo que deve ser executado ao rodar os testes.

________________________________________

**Execução dos testes:**

Pré-requisitos:

Python Instalado e configurado
- https://www.python.org/downloads/

Lista de comandos para instalação das libraries external:
  - pip install robotframework
  - pip install -U robotframework-seleniumlibrary (Testes WEB)
  - pip install -U robotframework-databaselibrary (Testes em Banco de dados)
  - pip install pymssql (Driver para conexão com SQL Server)

Necessário baixar o driver do navegador que será executado os testes, e informado tal .exe na pasta Scripts que fica dentro da pasta do Python

Linha de comando:

robot -d ./results -i cliente -v BROWSER:headlesschrome cadastros/tests/tests.robot

-d seguido do diretório da pasta aonde será registrado os logs e screenshots
-i seguido da tag que consta no arquivo tests.robot é pra ser executado apenas os casos de testes que conterem a tag "cliente"
-v seguido de BROWSER:headlesschrome é pra executar em modo headless, ou seja o navegador não será aberto

Obs: O comando -i e -v não é obrigatório
