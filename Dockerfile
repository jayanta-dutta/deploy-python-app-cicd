
FROM python:3.9-slim

ENV PYTHONUNBUFFERED True
WORKDIR /app
COPY . ./
RUN pip install functions_framework gunicorn
CMD ["sh", "-c", "exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 main:app"]
