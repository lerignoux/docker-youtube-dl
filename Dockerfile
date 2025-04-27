FROM python:3.10-alpine
LABEL org.opencontainers.image.authors="Laurent Erignoux lerignoux@gmail.com"

RUN apk update && apk add git ffmpeg
RUN pip install --upgrade --force-reinstall uv
RUN uv pip install --system "git+https://github.com/ytdl-org/youtube-dl.git"

RUN mkdir /Downloads

WORKDIR /Downloads

ENTRYPOINT ["youtube-dl"]
