FROM python:3.7-alpine
MAINTAINER Erignoux Laurent <lerignoux@gmail.com>

RUN apk update && apk add git ffmpeg youtube-dl

RUN mkdir /Downloads

WORKDIR /Downloads

ENTRYPOINT ["youtube-dl"]
