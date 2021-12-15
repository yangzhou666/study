FROM golang:alpine

WORKDIR /webser/go_wepapp/banwenyu

ENV GO111MODULE=on
ENV GOPROXY="https://goproxy.io/"

COPY ./dist/* /webser/go_wepapp/banwenyu/
COPY start.sh /webser/go_wepapp/banwenyu/

RUN mkdir -p /webser/logs/ && chmod +x /webser/go_wepapp/banwenyu/start.sh

EXPOSE 4000

ENTRYPOINT ["sh", "/webser/go_wepapp/banwenyu/start.sh"]