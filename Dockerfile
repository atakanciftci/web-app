FROM python:3.6-alpine

LABEL maintainer="Atakan Ciftci"
LABEL maintainer.mail="hatakanciftci@gmail.com"

WORKDIR /app

COPY requirements.txt .
COPY app.py .

RUN requirements.txt

EXPOSE 5000
 
CMD  ["python", "app.py"] 
