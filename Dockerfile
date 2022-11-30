FROM alpine:3.11

RUN apk update
RUN apk add git git-fast-import python2 python2-dev build-base

RUN python -m ensurepip --upgrade && pip install 'Mercurial>=4.8.0,<4.9.0'
RUN git config --global core.ignorecase false

ENV PATH="${PATH}:/opt/fast-export"

RUN git clone https://repo.or.cz/fast-export.git /opt/fast-export