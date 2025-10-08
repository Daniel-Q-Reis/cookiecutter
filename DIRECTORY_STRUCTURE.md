# {{ cookiecutter.project_name }} - Complete Directory Structure

{{ cookiecutter.project_slug }}/
├── .gitignore
├── .pre-commit-config.yaml
├── Dockerfile
├── README.md
├── conftest.py
├── docker-compose.yml
├── manage.py
├── pyproject.toml
├── pytest.ini
├── requirements.txt
├── .env.example
├── .github/
│   └── workflows/
│       └── ci.yml
├── apps/
│   ├── __init__.py
│   ├── core/
│   │   ├── __init__.py
│   │   ├── apps.py
│   │   ├── management/
│   │   │   └── commands/
│   │   │       ├── __init__.py
│   │   │       ├── createsuperuser_if_none_exists.py
│   │   │       └── setup_project.py
│   │   ├── static/
│   │   └── templates/
│   └── users/
│       ├── __init__.py
│       ├── admin.py
│       ├── apps.py
│       ├── factories.py
│       ├── migrations/
│       │   ├── __init__.py
│       │   └── 0001_initial.py
│       ├── models.py
│       ├── serializers.py
│       ├── tests.py
│       ├── urls.py
│       └── views.py
├── {{ cookiecutter.project_slug }}/
│   ├── __init__.py
│   ├── asgi.py
│   ├── celery.py
│   ├── schema.py
│   ├── settings/
│   │   ├── __init__.py
│   │   ├── base.py
│   │   ├── development.py
│   │   └── production.py
│   ├── urls.py
│   └── wsgi.py
├── docs/
│   └── images/
│       ├── dashboard.png
│       └── sales-form.png
├── scripts/
│   ├── run_docker.bat
│   ├── run_docker.sh
│   ├── start_dev.bat
│   ├── start_dev.sh
│   ├── stop_dev.bat
│   ├── stop_dev.sh
│   ├── use_docker_settings.bat
│   ├── use_docker_settings.sh
│   ├── use_local_settings.bat
│   └── use_local_settings.sh
├── static/
└── venv/
    └── (virtual environment files)