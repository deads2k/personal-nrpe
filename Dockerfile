FROM fedora:20

ENV container docker

RUN yum install -y -q nrpe && yum clean all && systemctl enable nrpe.service

ADD nrpe.cfg /etc/nagios/nrpe.cfg

EXPOSE 5666

CMD ["/usr/sbin/init"]