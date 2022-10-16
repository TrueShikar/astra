FROM ubuntu:20.04

RUN apt update -y
RUN apt install -y curl
RUN apt-get install systemd -y
RUN curl -Lo /usr/bin/astra https://cesbo.com/astra-latest
RUN chmod +x /usr/bin/astra
RUN astra init

CMD systemctl start astra
