FROM python:3.7-alpine3.13

WORKDIR /app

RUN apk update \
    && apk add --virtual build-deps gcc python3-dev musl-dev \
    && apk add --no-cache mariadb-dev

COPY . /app
RUN pip install -r requirements.txt

EXPOSE 3000

ENTRYPOINT [ "sh", "gunicorn.sh" ]