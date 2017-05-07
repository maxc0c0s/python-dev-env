FROM python:latest

ONBUILD COPY . /opt/project

WORKDIR /opt/project
