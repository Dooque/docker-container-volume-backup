FROM resin/raspberry-pi-python:3.7.0-stretch

RUN apt-get update && apt-get install git

RUN make /app
COPY . /app
CMD python /app/backup.py