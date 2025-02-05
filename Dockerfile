FROM python:3.13.1-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt 

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]