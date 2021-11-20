FROM python:3.6-alpine

LABEL maintainer="Atakan Ciftci"
LABEL maintainer.mail=hatakanciftci@hotmail.com"

WORKDIR /app

COPY requirements.txt .
COPY app.py .

RUN pip install -r requirements.txt

EXPOSE 5000
 
CMD  ["python", "app.py"] 
