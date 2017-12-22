FROM python:3.6

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi

WORKDIR /myproj
COPY . /myproj

RUN pip3 install -r requirements.txt

EXPOSE 8080
USER uwsgi

ENV DJANGO_SETTINGS_MODULE askdjango20171222.settings.prod

CMD ["uwsgi", "--http", "0.0.0.0:8080", "--wsgi-file", "/myproj/askdjango20171222/wsgi.py"]

