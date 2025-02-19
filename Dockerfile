FROM centos:7
MAINTAINER lauredd
LABEL Remarks="OracleDB 11g as a docker container"

ADD assets /assets

RUN chmod -R 755 /assets
RUN /assets/setup.sh

EXPOSE 1521
EXPOSE 8080

CMD ["/assets/entrypoint.sh"]
