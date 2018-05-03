FROM mono:latest

RUN apt-get update && \
apt-get -y install wget && \
mkdir /NodeLink

EXPOSE 8090

COPY startup.sh /
VOLUME /NodeLink

ENTRYPOINT ["/startup.sh"]
