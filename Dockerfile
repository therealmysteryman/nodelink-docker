FROM mono:5.8.0.127

RUN apt-get update && apt-get dist-upgrade -y
RUN apt-get -qqy install wget
RUN mkdir /NodeLink

EXPOSE 8090

COPY startup.sh /usr/local/myscripts/mystart.sh
VOLUME NodeLink

CMD ["/bin/bash", "/usr/local/myscripts/mystart.sh"]
