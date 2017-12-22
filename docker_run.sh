#!/bin/sh

docker run \
    -p 8080:8080 \
    -e AZURE_ACCOUNT_NAME="" \
    -e AZURE_ACCOUNT_KEY="" \
    -e DB_HOST="" \
    -e DB_NAME="" \
    -e DB_USER="" \
    -e DB_PASSWORD="" \
    -it knu uwsgi \
    --http 0.0.0.0:8080 \
    --wsgi-file=/myproj/askdjango20171222/wsgi.py

