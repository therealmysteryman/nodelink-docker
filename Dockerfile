FROM mono:latest

COPY startup.sh /
RUN chmod +x startup.sh
RUN mkdir /NodeLink

VOLUME /NodeLink

ENTRYPOINT ["/startup.sh"]
