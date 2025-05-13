FROM python:3.11-slim

WORKDIR /app

COPY rescan.py .
COPY config.ini .

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "/app/config/rescan.py"] 