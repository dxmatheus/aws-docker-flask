# AWS Docker Flask App

Projeto simples que cria um app Flask em Python, containerizado com Docker e rodando em uma instância EC2 da AWS.

## Estrutura do projeto

/app

Diretorio onde está o app.py. A aplicação em python que vai rodar no localhost na porta 5000 uma mensagem: Hello from Flask on Docker in AWS!

Arquivo requirenments.txt é o arquivo que contem a versão de flask a ser instalada para o funcionamento do app.py

Arquivo Dockerfile é o arquivo para criação do Docker



## Funcionamento do projeto

A partir das instruções presentes no arquivo Dockerfile é criado um Docker onde a aplicação é executada e o dispositivo local vai exibir a mensagem na porta 5000 de um navegador



Passo a Passo:

1. No diretório que esta o arquivo Dockerfile rode o comando abaixo para criar (buildar) o Docker

``` Docker build -t flask-app1 . ```



-t flask-app1: apenas uma tag, nome para a build

.: aponta a pasta que esta o Dockerfile (no caso a mesma porta que estamos acessando pelo cmd)



2. Rodar o Docker apontando a porta 5000:5000. O primerio 5000 é a porta do meu pc, o segundo é a porta do Docker

```docker run -p 5000:5000 flask-app1```



## Fazendo a integracao com o git

1. Criando o git nesse projeto

a) Cria a pasta do git no diretório

```git init```

b) Add os arquivos para estarem na mira das mudanças do git 

```git add .```
.: indica que vai adicionar tudo da pasta

c) Depois temos que commitar as mudanças e tira uma foto, salva as mudanças dos arquivos

```git commit -m "Versao incial do flask-app1"```



2. Conectando o repositório com o GitHub

a) Conectar com o repositório remoto do GitHub

```git remote add origin https://github.com/dxmatheus/aws-docker-flask.git```

b) Fazer o push da situação atual do repositório

```git push origin main ```
