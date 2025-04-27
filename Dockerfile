FROM python:3.10-alpine
LABEL org.opencontainers.image.authors="Laurent Erignoux lerignoux@gmail.com"

RUN apk update && apk add git ffmpeg youtube-dl

RUN mkdir /Downloads

WORKDIR /Downloads

ENTRYPOINT ["youtube-dl"]
