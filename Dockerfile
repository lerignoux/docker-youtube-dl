FROM python:3.7-alpine
MAINTAINER Erignoux Laurent <lerignoux@gmail.com>

RUN apk update && apk add git ffmpeg
RUN pip install --upgrade --force-reinstall "git+https://github.com/ytdl-org/youtube-dl.git"

RUN mkdir /Downloads

WORKDIR /Downloads

ENTRYPOINT ["youtube-dl"]
