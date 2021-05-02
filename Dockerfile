#  Dockerfile
#
# docker build -t python-imdb .
# docker run python-imdb
# docker run -t -i python-imdb

FROM python:3.8

ADD main.py .

RUN pip install requests beautifulsoup4

CMD [ "python", "./main.py"]
