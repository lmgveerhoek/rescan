FROM python:3.11-slim

WORKDIR /app

COPY rescan.py .

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "/app/rescan.py"] 