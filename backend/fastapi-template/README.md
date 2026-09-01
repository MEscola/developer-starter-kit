# FastAPI Template

Template base para criação de APIs com **FastAPI**, **SQLAlchemy**, **PostgreSQL** e **Alembic**.

O objetivo deste template é fornecer uma estrutura inicial padronizada para novos projetos Python, evitando a necessidade de configurar novamente ferramentas, banco de dados, migrations, testes e qualidade de código.

## Stack

* Python 3.11+
* FastAPI
* SQLAlchemy
* PostgreSQL
* Alembic
* Pydantic Settings
* Uvicorn
* pytest
* Ruff
* Black
* uv
* Docker
* Docker Compose

## Estrutura

```text
fastapi-template/
├── alembic/                 # Migrations do banco
│   ├── versions/            # Migrations geradas
│   ├── env.py
│   └── script.py.mako
├── app/
│   ├── core/                # Configurações da aplicação
│   │   └── config.py
│   ├── db/                  # Configuração do banco
│   │   ├── base.py
│   │   └── session.py
│   └── main.py              # Entrada da aplicação
├── docs/                    # Documentação complementar
├── tests/                   # Testes automatizados
├── .env.example             # Exemplo de variáveis de ambiente
├── Dockerfile
├── Dockerfile.dev
├── docker-compose.yml
├── Makefile
├── pyproject.toml
└── uv.lock
```

## Pré-requisitos

* Python 3.11 ou superior
* [uv](https://docs.astral.sh/uv/)
* Docker
* Docker Compose

## Configuração

Copie o arquivo de exemplo:

```bash
cp .env.example .env
```

Configure as variáveis de ambiente no arquivo `.env`.

Exemplo:

```env
DATABASE_URL=postgresql+psycopg://postgres:postgres@localhost:5432/fastapi_db
SECRET_KEY=change-me
ENVIRONMENT=development
```

> Se a porta `5432` já estiver sendo utilizada por outro PostgreSQL local, altere a porta publicada no `docker-compose.yml` e utilize a mesma porta no `DATABASE_URL`.

## Instalação

Instale as dependências com:

```bash
make install
```

ou:

```bash
uv sync
```

## Banco de dados

O PostgreSQL é executado através do Docker Compose.

Para iniciar somente o banco:

```bash
make db
```

ou:

```bash
docker compose up -d db
```

Para verificar os containers:

```bash
docker compose ps
```

Para parar o banco:

```bash
docker compose down
```

## Desenvolvimento

Inicie a aplicação em modo desenvolvimento:

```bash
make dev
```

ou:

```bash
uv run fastapi dev app/main.py
```

A API estará disponível em:

```text
http://localhost:8000
```

A documentação interativa do FastAPI estará disponível em:

```text
http://localhost:8000/docs
```

## Health Check

A aplicação possui um endpoint para verificar sua disponibilidade:

```http
GET /health
```

Exemplo de resposta:

```json
{
  "detail": "API is healthy",
  "status": "ok"
}
```

## Testes

Execute os testes automatizados:

```bash
make test
```

ou:

```bash
uv run pytest
```

## Qualidade de código

### Ruff

```bash
make lint
```

ou:

```bash
uv run ruff check .
```

### Formatação

```bash
make format
```

O comando executa a formatação com Ruff e corrige problemas simples de lint.

### Verificação completa

Antes de subir alterações:

```bash
make check
```

Esse comando executa:

1. Ruff
2. Verificação de formatação
3. Testes automatizados

## Migrations

As migrations são gerenciadas pelo Alembic.

### Criar uma migration

Depois de alterar os models:

```bash
make migration MSG="create users table"
```

ou:

```bash
uv run alembic revision --autogenerate -m "create users table"
```

### Aplicar migrations

```bash
make upgrade
```

ou:

```bash
uv run alembic upgrade head
```

### Reverter a última migration

```bash
make downgrade
```

ou:

```bash
uv run alembic downgrade -1
```

As migrations ficam armazenadas em:

```text
alembic/versions/
```

## Docker

Construir a imagem:

```bash
docker build -t fastapi-template .
```

Executar:

```bash
docker run -p 8000:8000 fastapi-template
```

## Comandos do Makefile

| Comando                    | Descrição                             |
| -------------------------- | ------------------------------------- |
| `make install`             | Instala/sincroniza as dependências    |
| `make dev`                 | Inicia o servidor em desenvolvimento  |
| `make test`                | Executa os testes                     |
| `make lint`                | Executa o Ruff                        |
| `make format`              | Formata e corrige problemas simples   |
| `make check`               | Executa todas as verificações         |
| `make migration MSG="..."` | Cria uma migration                    |
| `make upgrade`             | Aplica migrations pendentes           |
| `make downgrade`           | Reverte a última migration            |
| `make shell`               | Abre o interpretador Python           |
| `make db`                  | Inicia o PostgreSQL                   |
| `make clean`               | Remove arquivos temporários do Python |

## Documentação

Documentações complementares estão disponíveis em:

```text
docs/
```

Incluindo informações sobre:

* API
* Arquitetura
* Banco de dados
* Desenvolvimento
* Docker
* Deploy
* Release
* Roadmap

## Licença

Este template está disponível sob a licença definida no arquivo `LICENSE`.
