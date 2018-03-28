FROM python:3.5.5-slim

ENV TINI_VERSION v0.17.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini

RUN apt-get update && apt-get install -y \
        gcc \
        gettext \
        mysql-client libmysqlclient-dev \
        libxml2-dev libxslt1-dev \
    --no-install-recommends && rm -rf /var/lib/apt/lists/*
