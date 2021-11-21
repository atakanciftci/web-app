FROM python:3.6-alpine

LABEL maintainer="Atakan Ciftci"
LABEL maintainer.mail="hatakanciftci@gmail.com"

WORKDIR /app

COPY requirements.txt .
COPY app.py .
COPY nginx.conf .

RUN pip freeze > requirements.txt

EXPOSE 5000
 
CMD  ["python", "app.py"] 
