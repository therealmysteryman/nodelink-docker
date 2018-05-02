FROM mono:latest

RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get -qqy install wget
RUN mkdir /NodeLink

EXPOSE 8090

COPY startup.sh /usr/local/myscripts/mystart.sh
VOLUME NodeLink

CMD ["/bin/bash", "/usr/local/myscripts/mystart.sh"]
