FROM ubuntu:20.04

ENV TZ=Asia/Bangkok
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y tsung && \
    ln -s /usr/lib/x86_64-linux-gnu/tsung /usr/lib/tsung

WORKDIR /root/.tsung

EXPOSE 8091
ENTRYPOINT [ "tsung" ]
