FROM python:latest

RUN pip install coverage

ONBUILD COPY . /opt/project

WORKDIR /opt/project

ONBUILD RUN python setup.py install
