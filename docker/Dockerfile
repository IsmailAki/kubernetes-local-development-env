FROM python:3.7.11-alpine3.13

RUN mkdir -p /app
WORKDIR /app
COPY . /app

RUN apk update \
    && apk add --virtual build-deps gcc python3-dev musl-dev \
    && apk add --no-cache mariadb-dev

RUN pip install -r requirements.txt

EXPOSE 3000

CMD [ "python","application.py"]