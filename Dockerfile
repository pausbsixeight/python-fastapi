#  docker build -t python-fastapi .
#  doker run -p 8000:8000 python-fastapi
#  eval "$(ssh-agent -s)"

FROM python:3.8

WORKDIR /fastapi-app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./app ./app

CMD [ "python", "./app/main.py" ]
