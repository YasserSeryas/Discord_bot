# Dockerfile
FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/YasserSeryas/Discord_bot.git /app

RUN pip install -r /app/requirements.txt

CMD ["python", "/src/main.py"]
