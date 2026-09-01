# Developer Starter Kit

Coleção de templates, boas práticas e ferramentas para acelerar a criação de novos projetos de software.

O Starter Kit fornece uma estrutura inicial reutilizável para projetos, permitindo selecionar apenas os componentes necessários para cada aplicação.

## Estrutura

```text
developer-starter-kit/
├── backend/
│   └── fastapi-template/
├── devops/
├── frontend/
│   └── nextjs-template/
├── scripts/
├── CHANGELOG.md
├── LICENSE
└── README.md
```

### Diretórios

* `frontend/` — Templates para aplicações frontend.
* `backend/` — Templates para APIs e serviços backend.
* `devops/` — Recursos relacionados a Docker, CI/CD, Terraform e infraestrutura.
* `scripts/` — Scripts auxiliares para automação e manutenção.

## Templates disponíveis

### Frontend

* Next.js

  * React
  * TypeScript
  * Tailwind CSS
  * ESLint
  * Docker

### Backend

* FastAPI

  * Python
  * SQLAlchemy
  * PostgreSQL
  * Alembic
  * Pydantic Settings
  * Pytest
  * Ruff
  * Docker

## DevOps

Recursos disponíveis para padronização da infraestrutura e do ciclo de desenvolvimento:

* Docker
* Docker Compose
* GitHub Actions
* Terraform

## Como utilizar

O Starter Kit foi desenvolvido como uma coleção de templates reutilizáveis.

Para iniciar um novo projeto:

1. Clone o Starter Kit.
2. Identifique o template necessário.
3. Copie o conteúdo do template para o novo projeto.
4. Ajuste nome, configurações, dependências e variáveis de ambiente.
5. Remova os componentes que não forem necessários.
6. Inicialize o novo projeto com seu próprio repositório Git.

O Starter Kit não precisa ser utilizado integralmente. Cada projeto pode utilizar apenas os templates e recursos necessários.

## Objetivos

* Padronizar novos projetos.
* Evitar recriar configurações do zero.
* Centralizar boas práticas.
* Facilitar manutenção e evolução dos projetos.
* Reduzir o tempo necessário para configurar a estrutura inicial de uma aplicação.
* Fornecer uma base consistente para projetos pessoais e profissionais.

## Status

Os templates atuais do Starter Kit são funcionais e foram validados em ambiente de desenvolvimento.

Atualmente estão disponíveis templates para Next.js e FastAPI, além de recursos de Docker, CI/CD e infraestrutura.

O Starter Kit continuará evoluindo com a inclusão de novos templates, ferramentas e melhorias.

## Versionamento

O Starter Kit utiliza versionamento para acompanhar a evolução dos templates e das configurações.

Alterações relevantes são registradas no `CHANGELOG.md`.

## Contribuição

Novos templates, melhorias e correções podem ser incorporados ao Starter Kit conforme novas necessidades forem identificadas.

## Licença

Este projeto está disponível sob a licença definida no arquivo `LICENSE`.
