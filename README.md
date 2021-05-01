## Análise de Dados - Auxílio Emergencial - 2020/2021

<p align="center"><img src="http://www.utfpr.edu.br/++theme++utfpr_branco/img/logo.png" width="400"></p>


## Fonte dos dados:
* [Portal da Transparência](http://www.portaldatransparencia.gov.br/pagina-interna/603519-download-de-dados-auxilio-emergencial)

## Requerimentos

* [R Project for Statistical Computing](https://www.r-project.org/) - Version: >=4.0.0
* [Docker](https://www.docker.com/)

## Manual de configuração

1. No diretório do projeto, execute o comando abaixo para inicializar o container com a base do postgreSQL.
```
docker-compose up -d
```
2. Executar o script **cria_banco.sql** para criação das tabelas

3. Executar o script **read_save_data.R** para o povoamento das tabelas