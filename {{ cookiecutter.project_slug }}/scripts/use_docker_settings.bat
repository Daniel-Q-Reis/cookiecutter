@echo off

REM Switch to Docker settings
echo Switching to Docker settings...

REM Check if backup file exists
if exist "{{ cookiecutter.project_slug }}\settings\development.py.docker.bak" (
    REM Restore the Docker settings from backup
    copy "{{ cookiecutter.project_slug }}\settings\development.py.docker.bak" "{{ cookiecutter.project_slug }}\settings\development.py"
    del "{{ cookiecutter.project_slug }}\settings\development.py.docker.bak"
    echo Successfully switched to Docker settings.
) else (
    REM Update the development.py file to use 'db' instead of localhost for PostgreSQL
    powershell -Command "(gc {{ cookiecutter.project_slug }}\settings\development.py) -replace "'HOST': 'localhost'", "'HOST': 'db'" | Out-File -encoding ASCII {{ cookiecutter.project_slug }}\settings\development.py"
    echo Successfully switched to Docker settings.
)