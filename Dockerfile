FROM mcr.microsoft.com/devcontainers/python:1-3.11-bullseye

USER vscode

WORKDIR /app

COPY . .

RUN pip install --user pdm

RUN pdm sync

CMD [ "pdm" "run" "start"]