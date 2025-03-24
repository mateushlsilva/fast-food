# Como Rodar a Aplicação

Este projeto utiliza Docker Compose para facilitar a execução dos serviços necessários. Siga as instruções abaixo para rodar a aplicação.

## Pré-requisitos

* Docker e Docker Compose instalados em sua máquina.
* Git instalado em sua máquina.

## Instruções

1.  **Clonar o Repositório do Chatbot Fastfood (Inicialização):**

    Se você ainda não clonou o repositório `chatbot-fastfood`, execute o seguinte comando para inicializar o setup:

    ```bash
    make init-setup
    ```

    Este comando irá:

    * Clonar o repositório `https://github.com/mateushlsilva/chatbot-fastfood.git` para o diretório local.
    * Iniciar os containers Docker definidos no `docker-compose.yml` em modo detached (`-d`).

2.  **Rodar a Aplicação (Após a Inicialização):**

    Se o repositório `chatbot-fastfood` já foi clonado, você pode simplesmente rodar a aplicação com o seguinte comando:

    ```bash
    make run
    ```

    Este comando irá iniciar os containers Docker definidos no `docker-compose.yml` em modo detached (`-d`).

3.  **Remover e Limpar o Setup:**

    Para remover todos os containers Docker e a rede Docker criados pelo `docker-compose.yml`, e também remover o diretório `chatbot-fastfood`, execute o seguinte comando:

    ```bash
    make remove-setup
    ```

    **Atenção:** Este comando irá remover todos os dados persistidos nos volumes Docker.

## Variáveis de Ambiente

Certifique-se de que os arquivos `.env` e `.env.local` estejam configurados corretamente com as variáveis de ambiente necessárias para a aplicação.

## Observações

* O comando `make init-setup` clona o repositório `chatbot-fastfood` para o diretório local. Se você já clonou o repositório manualmente, pode pular este passo e usar apenas `make run`.
* O comando `make remove-setup` remove todos os containers e volumes Docker. Se você tiver dados importantes, faça um backup antes de executar este comando.
