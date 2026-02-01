# ===== build stage =====
FROM python:3.11-slim AS builder

WORKDIR /app
COPY requirements.txt .
RUN pip install --upgrade pip && pip install --prefix=/install -r requirements.txt

# ===== run stage =====
FROM python:3.11-slim

WORKDIR /app

# copy installed packages from builder image
COPY --from=builder /install /usr/local
# copy app source
COPY main.py .
COPY test_main.py .

# run tests at container start (optional; they will also run in GitHub Actions)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
