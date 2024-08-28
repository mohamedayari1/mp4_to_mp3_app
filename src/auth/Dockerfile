FROM python:3.10-slim AS base

# Install system dependencies including pkg-config and libmariadb-dev
RUN apt-get update && apt-get install -y \
    gcc \
    python3-dev \
    curl \
    build-essential \
    pkg-config \
    libmariadb-dev \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install Poetry
RUN pip install poetry

# Add Poetry to PATH
ENV PATH="/root/.local/bin:$PATH"

WORKDIR /app

# Copy only the necessary files for Poetry installation
COPY pyproject.toml poetry.lock* /app/

# Install dependencies using Poetry
RUN poetry install --no-root --only main

# Copy the rest of the application
COPY . /app

# Expose the port the app runs on
EXPOSE 5000

# Run the application
CMD ["poetry", "run", "python", "server.py"]
