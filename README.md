# Docker - Desafio FullCycle Rocks

Projeto simples e empolgante com Docker e a linguagem Go!

## Objetivos:

1) Publicar uma imagem no docker hub. 
Para baixar a imagem é necessário executar o comando:

docker run eichenberg/full-cycle-rocks

2) É esperado o seguinte resultado na tela: *Full Cycle Rocks!*

3) A imagem de nosso projeto Go precisa ter menos de 2MB =)

## Pré-requisitos para baixar e executar o projeto em sua máquina:

- Sistema Operacional Linux ou Windows 10 com WSL2
- Possuir Git instalado
- Possuir o docker instalado no linux (ou Windows10 com WSL2)

## Como executar (opção 1):

Abra um terminal na pasta raiz do projeto, e execute o script *build-image.sh*.

```
sh build-image.sh
```

## Como executar (opção 2):

Abra um terminal na pasta raiz do projeto, e execute os comandos abaixo.

```
# Executa o arquivo Dockerfile para montar uma imagem
docker build -t full-cycle-rocks .

# remove a imagem golang:alpine utilizada para compilar o script 'main.go'
docker image rm golang:alpine -f

# executa o container 'full-cycle-rocks' e o remove após sua execução
docker run --rm full-cycle-rocks
```

### Um ponto interessante:

- Você não precisa ter o ambiente da GoLang instalado em sua máquina apenas o Docker.
- O script *build-image.sh* irá baixar uma imagem docker com com a goLang, compartilhar a pasta /src com o container docker, compilar o arquivo *src/main.go*.
- Logo após a compilação do arquivo *src/main.go* o *Dockerfile* irá criar um container com menos de 2MB contendo o executável *main* gerado no passo anterior, e irá executá-lo antes de encerrar a execução do container construido.

# Baixar a imagem no Dockerhub

Imagem disponível no endereço:
[https://hub.docker.com/repository/docker/eichenberg/full-cycle-rocks]
