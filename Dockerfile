FROM python:3.6-alpine

LABEL maintainer="Atakan Ciftci"
LABEL maintainer.mail="hatakanciftci@gmail.com"

WORKDIR /app

COPY requirements.txt .
COPY app.py .
COPY nginx.conf .
COPY index.html

RUN pip install -r requirements.txt

EXPOSE 5000
 
CMD  ["python", "app.py"] 
