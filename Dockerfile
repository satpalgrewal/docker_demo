FROM ubuntu:18.04

LABEL maintainer="satpal.grewal"
LABEL description="Docker image with aws cli"

RUN apt-get update \
  && apt-get install -y wget

# Install Python 3.7
RUN apt-get install -y python3.7 python3-distutils

# Install pip
RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python3.7 get-pip.py

# install aws cli
RUN pip3 install awscli

# ENV PATH $PATH:aaa:$bbb
