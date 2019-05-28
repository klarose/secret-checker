FROM python:3.7-alpine

WORKDIR /app
ADD requirements.txt requirements.txt
ADD checker.py checker.py
RUN pip3 install -r requirements.txt

ENV FLASK_APP checker.py
ENV SECRET_VALUE ""
ENTRYPOINT python -m flask run --host=0.0.0.0
