# Enterprise Django REST API Cookiecutter

A production-ready, opinionated cookiecutter template for building enterprise-grade Django REST APIs. This template bootstraps a new project with a robust architecture, automated quality gates, and a fully containerized environment, allowing you to focus on business logic from day one.

---

## Core Features

This template is built upon a foundation of enterprise best practices, ensuring scalability, maintainability, and security.

-   **Production-Ready by Default**: Fully containerized with Docker and Docker Compose, including services for PostgreSQL, Redis, Celery Workers, and Celery Beat.
-   **Robust Architecture**: Implements Clean Architecture principles, separating concerns with a dedicated Service Layer and clearly defined application structures.
-   **Automated Quality & Security Gates**: Pre-configured `pre-commit` hooks run a strict suite of checks on every commit:
    -   `black` for uncompromising code formatting.
    -   `ruff` for high-speed linting and error detection.
    -   `mypy` for rigorous static type checking in `--strict` mode.
    -   `bandit` for identifying common security vulnerabilities.
-   **CI/CD Out-of-the-Box**: Includes a GitHub Actions workflow for the generated project that runs tests, quality checks, and security scans automatically.
-   **Automated Project Setup**: A single command builds the environment, applies migrations, and creates a superuser, getting you from zero to a running API in minutes.
-   **Asynchronous Task Processing**: Integrated Celery and Redis for handling background jobs and scheduled tasks efficiently.
-   **Enterprise-Grade Observability**: Pre-configured with structured logging (`python-json-logger`) for easier integration with modern log management systems.
-   **Interactive API Documentation**: Automatic generation of OpenAPI schemas with Swagger UI and ReDoc via `drf-spectacular`.

## Tech Stack

| Category              | Technology                                                               |
| --------------------- | ------------------------------------------------------------------------ |
| **Backend** | Django 4.2, Django REST Framework                                        |
| **Database** | PostgreSQL                                                               |
| **Async Tasks & Cache** | Celery, Redis                                                            |
| **Deployment** | Docker, Docker Compose, Gunicorn                                         |
| **Authentication** | JWT (djangorestframework-simplejwt)                                      |
| **Code Quality** | `black`, `ruff`, `mypy`, `bandit`, `pre-commit`                          |
| **Testing** | `pytest`, `pytest-django`, `pytest-cov`, `factory-boy`                   |
| **API Documentation** | `drf-spectacular` (Swagger UI / ReDoc)                                   |
| **Configuration** | `python-decouple`                                                        |

---

## Quickstart Guide

### 1. Generate the Project

Navigate to the directory where you want to create your project and run:

```bash
cookiecutter gh:Daniel-Q-Reis/cookiecutter
```

You will be prompted to enter project details (project name, slug, description, etc.).

```
project_name [My API Project]: LinkHub API
project_slug [linkhub_api]: (press Enter to accept)
description [...]: API for creating a personalized links page.
...and so on.
```

### 2. Run the Automated Setup

The template includes scripts to bootstrap the entire development environment.

First, navigate into your newly created project directory:
```bash
cd <your_project_slug>
```

Next, prepare the local configuration files by copying the examples:
-   **On Unix/Linux/Mac**:
    ```bash
    cp .env.example .env && cp docker-compose.override.yml.example docker-compose.override.yml
    ```
-   **On Windows (CMD or PowerShell)**:
    ```powershell
    copy .env.example .env
    copy docker-compose.override.yml.example docker-compose.override.yml
    ```

Now, execute the setup script for your OS. This will build the containers, run migrations, and create a default superuser.
-   **On Unix/Linux/Mac**:
    ```bash
    chmod +x scripts/run_docker.sh && ./scripts/run_docker.sh
    ```
-   **On Windows**:
    ```powershell
    scripts\run_docker.bat
    ```

> **Forcing a rebuild without cache?**
> If you need to perform a clean rebuild of all Docker images, use this command:
> `docker-compose build --no-cache && scripts\run_docker.bat` (Windows) or the equivalent for your OS.

### 3. Verify Your Environment

Once the script finishes, your API is live. Check the following endpoints:

-   **Django Admin**: `http://localhost:8000/admin/`
    -   **User**: `admin@example.com`
    -   **Password**: `admin123`
-   **API Docs (Swagger)**: `http://localhost:8000/api/v1/schema/swagger-ui/`

### 4. Push to Your Repository

The `post-generation` hook has already initialized a Git repository and made the first commit for you. Just link it to your remote and push:

```bash
git remote add origin [https://github.com/your-username/your-repo-name.git](https://github.com/your-username/your-repo-name.git)
git branch -M main
git push -u origin main
```

Your production-ready API foundation is now complete.

## Author & Contact

This template was created and is maintained by:

-   **Author**: Daniel de Queiroz Reis
-   **Email**: danielqreis@gmail.com
-   **WhatsApp**: +55 35 99190-2471