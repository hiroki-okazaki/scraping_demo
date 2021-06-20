FROM python:3.10.0b2-slim-buster

RUN apt-get update && \
  apt-get install -y --no-install-recommends \
  ca-certificates \
  git \
  && apt-get clean && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /app

RUN pip install pipenv --no-cache-dir 
# && \
# pipenv install --system --deploy && \
# pip uninstall -y pipenv virtualenv-clone virtualenv