FROM python:3.8-slim

WORKDIR /app

COPY . /app

RUN chmod +x jathushan.py

CMD ["python", "jathushan.py"]

