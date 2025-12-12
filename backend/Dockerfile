FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# add netcat for wait script
RUN apt-get update && apt-get install -y netcat-openbsd

COPY . .

RUN chmod +x /app/wait-for-db.sh

CMD ["./wait-for-db.sh", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
