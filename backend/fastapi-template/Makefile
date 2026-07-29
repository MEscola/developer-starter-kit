.PHONY: help install dev test lint format check migration upgrade downgrade clean shell db

help:
	@echo "Available commands:"
	@echo "  make install    - Install dependencies"
	@echo "  make dev        - Run development server"
	@echo "  make test       - Run tests"
	@echo "  make lint       - Run Ruff"
	@echo "  make format     - Format code"
	@echo "  make check      - Run all quality checks"
	@echo "  make migration  - Create database migration"
	@echo "  make upgrade    - Apply migrations"
	@echo "  make downgrade  - Rollback migration"
	@echo "  make shell      - Open Python shell"
	@echo "  make db         - Start database container"


# Instala ou sincroniza todas as dependências usando uv
install:
	uv sync


# Inicia o servidor FastAPI em modo desenvolvimento com reload automático
dev:
	uv run fastapi dev app/main.py


# Executa os testes automatizados
test:
	uv run pytest


# Analisa problemas de qualidade no código com Ruff
lint:
	uv run ruff check .


# Formata o código e corrige problemas simples automaticamente
format:
	uv run ruff format .
	uv run ruff check . --fix


# Executa todas as validações antes de subir uma alteração
check:
	uv run ruff check .
	uv run ruff format --check .
	uv run pytest


# Cria uma nova migration baseada nas alterações dos models
# Exemplo: make migration MSG="create users table"
migration:
	uv run alembic revision --autogenerate -m "$(MSG)"


# Aplica todas as migrations pendentes no banco
upgrade:
	uv run alembic upgrade head


# Volta uma migration
downgrade:
	uv run alembic downgrade -1


# Abre o interpretador Python dentro do ambiente uv
shell:
	uv run python


# Sobe apenas o container do banco de dados
db:
	docker compose up -d db


# Remove arquivos temporários gerados pelo Python
clean:
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete