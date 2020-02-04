FROM alpine:3.8
MAINTAINER Stille <stille@ioiox.com>

ENV VERSION v0.2.6

WORKDIR /base
RUN apk add wget && \
    wget -P /base https://github.com/tindy2013/subconverter/releases/download/${VERSION}/subconverter_linux64.tar.gz && \
    tar xzf subconverter_linux64.tar.gz && \
    rm -rf subconverter_linux64.tar.gz && \
    apk del wget
COPY pref.ini /base

EXPOSE 25500

CMD /base/subconverter