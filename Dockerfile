FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8

WORKDIR /app

RUN ls -la

COPY requirements.txt .

RUN cat requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 80

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]

