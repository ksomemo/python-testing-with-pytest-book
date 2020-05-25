FROM python:3.8.3-slim-buster AS base

ENV PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=off

WORKDIR /app
COPY pyproject.toml ./
# COPY poetry.lock pyproject.toml ./
RUN pip install --upgrade pip \
    && pip install poetry \
    && poetry config virtualenvs.create false \
    && poetry install --no-dev \
    && rm -rf ~/.cache/pip

COPY . .
CMD ["python"]
