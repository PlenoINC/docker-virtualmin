FROM centos:7

MAINTAINER @giodegas <giovanni@giodegas.it>

# Set root password to 'admin'
RUN printf admin\\nadmin\\n | passwd

RUN yum install -y wget perl iputils && \
    wget http://software.virtualmin.com/gpl/scripts/install.sh && \
    sh install.sh --minimal -f && \
    yum clean all

EXPOSE 22 25 10000 10001 10002 10003 10004 10005 10006 10007 10008 10009 20000
EXPOSE 80 443 21 20 110 143
EXPOSE 53/udp 53/tcp

ENTRYPOINT ["tail -F /var/log/messages"]
