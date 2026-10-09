# Flask App — Secure CI/CD Pipeline

## Overview

This project demonstrates a CI/CD pipeline for a Flask application using GitHub Actions. It focuses on automating application delivery and integrating security checks before deployment to AWS EC2.

## Teck Stack

  - Python & Flask
  - Docker & Docker compose
  - Github Action
  - AWS EC2
  - Security Scanning tools

## Project Structure

```text
flask-app-v2/
├── app.py                 → Flask application
├── Dockerfile             → Docker image definition
├── docker-compose.yml     → Container deployment configuration
├── templates/
│   └── index.html         → Application frontend
├── index.html             → Static code
├── requirements.txt       → Python dependencies
└── .github/
    └── workflows/         → CI/CD and security workflows
```

## CI/CD & Security Workflows

| # | Workflow | Tools | Why |
|---:|---|---|---|
| 1 | [DevSecOps Pipeline](.github/workflows/cicd.yml) | GitHub Actions | Orchestrates scans, build, and deployment |
| 2 | [Code Quality](.github/workflows/code-quality.yml) | `Flake8`, `Bandit` | Check code quality and security issues |
| 3 | [Secrets Scan](.github/workflows/secrets-scan.yml) | `Gitleaks` | Detect exposed secrets |
| 4 | [Dependency Scan](.github/workflows/dependency-scan.yml) | `pip-audit` | Find vulnerable dependencies |
| 5 | [Docker Lint](.github/workflows/docker-lint.yml) | `Hadolint` | Check Dockerfile best practices |
| 6 | [Image Scan](.github/workflows/image-scan.yml) | `Trivy` | Detect HIGH and CRITICAL vulnerabilities |
| 7 | [Deploy to Server](.github/workflows/deploy.yml) | `SSH`, `SCP`, `Docker Compose` | Deploy to AWS EC2 |



### Usage
