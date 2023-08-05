# One for All

## Descrição
Neste projeto, tive a oportunidade de normalizar tabelas não normalizadas, popular um banco de dados MySQL e executar queries para buscar informações específicas.

## Configurações do projeto
Antes de começar, verifique se você possui o Docker Compose na versão 1.29 ou superior instalado. Caso contrário, consulte a documentação para realizar a instalação.

Para iniciar o projeto utilizando o Docker, siga as orientações abaixo:

1. Execute o comando para iniciar os serviços node e db utilizando o Docker Compose:
```bash
docker-compose up -d
```
2. Acesse o container do projeto:
```bash
docker exec -it one_for_all bash
```
## Orientações
Após configurar o projeto, você pode executar os seguintes comandos:
- Para rodar todos os testes:
```bash
npm test
```
- Para rodar apenas um teste específico (por exemplo, o teste do requisito 01):
npm test -- -t "01"

## Habilidades desenvolvidas:
- Normalizar tabelas não normalizadas.
- Criar tabelas no banco de dados.
- Executar queries para buscar informações específicas.

## Formas de contato:
Email: alinems4120@gmail.com <br>
Linkedin: <a href="https://www.linkedin.com/in/alinemourasantos-dev/" target="_blank">Clique aqui</a>
