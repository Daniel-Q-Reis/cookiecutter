# 🚀 Django REST API Cookiecutter Template

> A professional Django REST API template with enterprise-grade architecture, ready to deploy in minutes.

![Python](https://img.shields.io/badge/python-3.11+-blue.svg)
![Django](https://img.shields.io/badge/django-4.2-green.svg)
![Docker](https://img.shields.io/badge/docker-ready-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

## ✨ What's Included

- **🏗️ Clean Architecture**: Service Layer + DTOs for maintainable, scalable code
- **🔐 Authentication**: JWT for API + Django Admin session-based
- **⚡ Performance**: Redis caching + Celery for async tasks
- **📝 API Docs**: Auto-generated Swagger UI & ReDoc
- **🧪 Testing**: Full test suite with pytest + factory-boy
- **🔒 Security**: Automated security scanning with bandit
- **🚢 Production Ready**: Docker + Docker Compose + Gunicorn

## 🛠️ Tech Stack

| Category | Technologies |
|----------|-------------|
| **Backend** | Django 4.2, Django REST Framework |
| **Database** | PostgreSQL |
| **Caching & Tasks** | Redis, Celery |
| **Testing** | pytest, factory-boy |
| **Quality** | ruff, mypy --strict, black, pre-commit, bandit |
| **Deployment** | Docker, Docker Compose, Gunicorn |

## 🎯 Quick Start

### 1️⃣ Generate Your Project

```
cookiecutter gh:Daniel-Q-Reis/cookiecutter
```

Answer the prompts (or press Enter for defaults):

```
project_name [My API Project]: Use a Project Name of your choice e.g.: My Awesome API
project_slug [my_awesome_api]: ⏎
description [A modern Django REST API project.]: API for my awesome project
author_name [Daniel de Queiroz Reis]: Your Name
email [danielqreis@gmail.com]: your@email.com
```

### 2️⃣ Set Up & Run

```
# Navigate to your project (replace with your project slug)
cd my_awesome_api

# Copy environment files
cp .env.example .env
cp docker-compose.override.yml.example docker-compose.override.yml

# Run automated setup (builds containers, runs migrations, creates superuser)
# Windows
scripts\run_docker.bat

# Unix/Linux/Mac
chmod +x scripts/run_docker.sh && ./scripts/run_docker.sh
```

### 3️⃣ Access Your API

Once running, open your browser:

- **Django Admin**: http://localhost:8000/admin/
  - User: `admin@example.com`
  - Password: `admin123`
- **Swagger UI**: http://localhost:8000/api/v1/schema/swagger-ui/
- **ReDoc**: http://localhost:8000/api/v1/schema/redoc/

✅ **That's it!** Your production-ready API is running.

## 📦 Daily Development

```
# Start environment
scripts/start_dev.bat  # Windows
scripts/start_dev.sh   # Unix/Linux/Mac

# Stop environment
scripts/stop_dev.bat   # Windows
scripts/stop_dev.sh    # Unix/Linux/Mac
```

## 🧪 Running Tests

```
# Run full test suite
docker-compose exec app pytest

# With coverage report
docker-compose exec app pytest --cov=. --cov-report=html
```

## 📚 Documentation

For detailed architecture, deployment guides, and advanced features, check the `README.md` inside your generated project.

## 🤝 Contributing

Issues and pull requests are welcome at [github.com/Daniel-Q-Reis/cookiecutter](https://github.com/Daniel-Q-Reis/cookiecutter)

## 📄 License

This project is licensed under the MIT License.

---

**Author**: Daniel de Queiroz Reis | **Email**: danielqreis@gmail.com
```
