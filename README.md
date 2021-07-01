# Repositório para fins acadêmicos.

As váriaveis de conexão ao banco de dados e de acesso ao sistema NÃO serão disponiilizadas, visto que comprometeria a segurança do sistema e a infraestrutura do mesmo.
________________________________________

**Estrutura do Projeto:**

Pasta base
- base.robot (Arquivo de base do projeto, onde são importadas as bibliotecas, e tem o caminho de todos os outros arquivos .robot, se um novo arquivo for criado, deve ser instanciado neste arquivo base.robot.)
- helpers.robot (Keywords de uso comum entre cenários [ex.: Abrir navegador, Fechar navegador])

**Estrutura do código:**

Utilizado o padrão Page Object.

No diretório da pasta "resource", existe a pasta "tests" que contém o arquivo tests.robot, é nele que temos o caso de deste, e ele é o arquivo que deve ser executado ao rodar os testes.

Os arquivos faturamento.robot e conferenciasXML.robot possuem as implementações das Keywords que foram criadas para automação.

________________________________________

**Execução dos testes:**

Python Instalado e configurado
- https://www.python.org/downloads/

Lista de comandos para instalação das libraries external:
  - pip install robotframework
  - pip install -U robotframework-seleniumlibrary (Testes WEB)
  - pip install -U robotframework-databaselibrary (Testes em Banco de dados)
  - pip install pymssql (Driver para conexão com SQL Server)

Necessário baixar o driver do navegador que será executado os testes, e informado tal .exe na pasta Scripts que fica dentro da pasta do Python

Linha de comando: robot -d ./results vendas/tests/tests.robot

-d seguido do diretório da pasta aonde será registrado os logs e screenshots
