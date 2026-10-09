# Flask App — Secure CI/CD Pipeline

## Overview

This project demonstrates a CI/CD pipeline for a Flask application using GitHub Actions. It focuses on automating application delivery and integrating security checks before deployment to AWS EC2.

## Tech Stack

  - Python & Flask
  - Docker & Docker Compose
  - GitHub Actions
  - AWS EC2
  - Security Scanning tools

## Project Structure

```text
flask-app-devops/
├── app.py                 → Flask application
├── Dockerfile             → Docker image definition
├── docker-compose.yml     → Container deployment configuration
├── templates/
│   └── index.html         → Application frontend
├── requirements.txt       → Python dependencies
└── .github/
    └── workflows/         → CI/CD and security workflows
```

## CI/CD & Security Workflows

| # | Workflow | Concepts Used | What It Does |
|---|---|---|---|
| 1 | [DevSecOps Pipeline](.github/workflows/cicd.yml) | Github Actions `on: push`, `workflow_call`, `needs`, `secrets: inherit` | Orchestrates security scans, image build, and deployment |
| 2 | [Code Quality](.github/workflows/code-quality.yml) | Flake8, Bandit, linting, SAST | Checks code quality and identifies potential security issues |
| 3 | [Secrets Scan](.github/workflows/secrets-scan.yml) | Gitleaks, Git history scanning, `fetch-depth: 0` | Detects exposed secrets in the repository's Git history |
| 4 | [Dependency Scan](.github/workflows/dependency-scan.yml) | `pip-audit`, vulnerability scanning | Checks Python dependencies for known vulnerabilities |
| 5 | [Docker Lint](.github/workflows/docker-lint.yml) | Hadolint, Dockerfile best practices | Identifies potential issues in the Dockerfile |
| 6 | [Image Scan](.github/workflows/image-scan.yml) | Trivy, severity filtering, `exit-code` | Detect HIGH and CRITICAL vulnerabilities |
| 7 | [Deploy to Server](.github/workflows/deploy.yml) | SSH, SCP, Docker Compose, remote deployment | Transfers deployment configuration and deploys the application to AWS EC2 |


## Usage & Deployment

1. Fork this repo
2. Set up secrets — Go to repo Settings → Secrets and Variables → Actions:
    - Secret: DOCKERHUB_TOKEN (your Docker Hub access token)
    - Secret: SSH_HOST, SSH_USER, SSH_PRIVATE_KEY (for server deploy)
    - Variable: DOCKERHUB_USERNAME (your Docker Hub username)
3. Push to main — the DevSecOps pipeline triggers automatically

    ```Note: Deploy and image-scan jobs will fail until you configure your own server and  Docker Hub secrets. This is expected — the CI jobs (code quality, tests, scans) will work out of the box.```

4. Try manual triggers — go to Actions tab → pick a workflow → Run workflow
   Read each workflow file — they are commented for learning


## Key Features

- Automated CI/CD pipeline using GitHub Actions.
- Reusable workflows for security checks.
- Automated code quality and security scanning.
- Docker image build and publishing.
- Container image vulnerability scanning.
- Remote application deployment to AWS EC2.
- Integration of security checks into the CI/CD process.

## Learning Outcomes

Through this project, I practised building reusable GitHub Actions workflows, integrating security scanning tools, containerizing a Flask application, and automating deployment to AWS EC2.

The project helped me understand how security checks can be integrated into an automated application delivery pipeline.