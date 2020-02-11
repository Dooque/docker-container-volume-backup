#FROM balenalib/raspberry-pi-debian:latest
FROM resin/raspberry-pi-python:3.7.0-stretch
RUN apt-get update && apt-get install git
