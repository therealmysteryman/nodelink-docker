FROM mono:latest

RUN apt-get update && \
apt-get -y install wget && \
mkdir /NodeLink

COPY startup.sh /
RUN chmod +x startup.sh
VOLUME /NodeLink

ENTRYPOINT ["/startup.sh"]
