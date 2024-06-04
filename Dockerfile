FROM mcr.microsoft.com/devcontainers/python:1-3.11-bullseye

USER vscode

WORKDIR /app

COPY . .

RUN pip install --user pdm

RUN python3 -m pdm sync

CMD python3 -m pdm run start