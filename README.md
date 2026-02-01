# FastAPI CI/CD Demo

This repository contains a minimal FastAPI application with unit tests, a Dockerfile, and a GitHub Actions workflow to demonstrate a basic CI/CD pipeline.[web:10][web:11]

## Features

- Simple FastAPI HTTP endpoint (`GET /`) returning a JSON message.  
- Unit tests using `pytest` and `fastapi.testclient`.  
- Docker image build using a multi-stage Dockerfile.  
- GitHub Actions workflow that installs dependencies, runs tests, and builds the Docker image.[web:10][web:11]

## Project Structure

- `main.py` – FastAPI application entry point.  
- `test_main.py` – Unit test for the root endpoint.  
- `requirements.txt` – Python dependencies.  
- `Dockerfile` – Multi-stage Dockerfile for building and running the app.  
- `.github/workflows/ci-cd.yml` – CI/CD pipeline definition for GitHub Actions.  
- `docs/index.md` (optional) – Content for GitHub Pages.[web:10][web:11][web:44]

## Requirements

- Python 3.11 (or compatible 3.x version).  
- pip.  
- Docker (for container build and run).  
- A GitHub repository with Actions enabled (for CI/CD).[web:11][web:50]

## Local Development

### 1. Create and activate a virtual environment (optional but recommended)

```bash
python -m venv .venv
# Win
