FROM python:3.9-slim

WORKDIR /app

COPY requirement.txt .
RUN pip install --no-cache-dir -r requirement.txt

COPY . .

EXPOSE 8003

CMD ["uvicorn", "Inventory.main:app", "--host", "0.0.0.0", "--port", "8003"]
