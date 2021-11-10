# Auto Escola A-Z

## :construction_worker: Instalação

**Antes de tudo você precisa ter instalado o [docker](https://docs.docker.com/engine/install/) e [docker-compose](https://docs.docker.com/compose/install/), após este basta baixar o repositório através do seguinte comando:**

```git clone https://github.com/jonasbraga/auto-escola.git```

### Navegue para a pasta do projeto e siga as seguintes etapas:

### Crie o arquivo .env com base no .env.example
  - cp ./src/.env.example ./src/.env

*Caso deseje apontar para outro banco de dados, altere as credenciais no .env*

### Realizar o build das imagens e subir os containers:
 - docker-compose build && docker-compose up -d

### Entre no terminal do container app e execute:
 - docker-compose exec app bash
 - composer update
 - composer i
 - php artisan key:generate
 - php artisan migrate:fresh
   - Caso esteja em um banco online, utilize php artisan migrate:status se ele ja foi configurado.
 - php artisan crudbooster:install
   - type: yes when requested
 - Para sair do container:
   - exit

### Acesse http://localhost:8000/
  >
    Login: admin@crudbooster.com
    Password: 123456

---

## Após o setup inicial:

### Para parar a execução:
- docker-compose down

### Para iniciar posteriormente:
- docker-compose up -d
