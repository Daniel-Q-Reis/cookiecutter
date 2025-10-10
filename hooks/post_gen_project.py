import os
import secrets
import shutil
from pathlib import Path


def generate_secret_key():
    """
    Generate a new SECRET_KEY for Django settings.
    """
    return secrets.token_urlsafe(50)


def main():
    # Generate a new SECRET_KEY and update the .env file
    secret_key = generate_secret_key()
    
    # Update the .env file with the new secret key
    env_file = Path(".env")
    if env_file.exists():
        content = env_file.read_text()
        # Replace the SECRET_KEY placeholder with a new one
        content = content.replace(
            "SECRET_KEY=YOUR_SECRET_KEY_HERE", 
            f"SECRET_KEY={secret_key}"
        )
        env_file.write_text(content)
    
    # Initialize git repository
    try:
        import subprocess
        subprocess.check_call(["git", "init"])
        subprocess.check_call(["git", "add", "."])
        subprocess.check_call(["git", "commit", "-m", "feat: initial commit from cookiecutter template"])
        print("Git repository initialized and initial commit created.")
    except (ImportError, subprocess.CalledProcessError):
        print("Git repository could not be initialized. Make sure Git is installed.")


if __name__ == "__main__":
    main()