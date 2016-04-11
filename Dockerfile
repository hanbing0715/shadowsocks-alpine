FROM python:alpine

MAINTAINER MagicHice <hanbing0715@gmail.com>

RUN pip install shadowsocks

RUN ln -sf /dev/stdout /var/log/shadowsocks.log

EXPOSE 8388

ENTRYPOINT ["/usr/local/bin/ssserver","-s","::","-m","aes-256-cfb","--fast-open"]

