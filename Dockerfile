FROM ubuntu:latest

RUN apt-get update && apt-get install -y wget mono-vbnc mono-complete

COPY startup.sh /
RUN chmod +x startup.sh
RUN mkdir /NodeLink

VOLUME /NodeLink

ENTRYPOINT ["/startup.sh"]
