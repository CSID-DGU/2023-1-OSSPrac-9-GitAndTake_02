FROM tiangolo/uwsgi-nginx-flask
COPY ./app /app

FROM python:3
WORKDIR /usr/scr/app
COPY . .

CMD ["python", "./app/main.py"]