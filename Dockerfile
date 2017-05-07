FROM python:latest

# The project root location from the build context perspective
ARG PROJECT_ROOT=.

RUN pip install coverage

ONBUILD COPY $PROJECT_ROOT /opt/project

WORKDIR /opt/project

ONBUILD RUN python setup.py install
