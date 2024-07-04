FROM centos:8

# https://serverfault.com/a/1161847
RUN sed -i s/mirror.centos.org/vault.centos.org/g /etc/yum.repos.d/*.repo
RUN sed -i s/^#.*baseurl=http/baseurl=http/g /etc/yum.repos.d/*.repo
RUN sed -i s/^mirrorlist=http/#mirrorlist=http/g /etc/yum.repos.d/*.repo

RUN yum -y install git
RUN yum -y groupinstall "Development Tools"

ADD sudo /bin/sudo

RUN adduser user
USER user

CMD bash -ic "$(curl -fsSL https://dorothy.bevry.me/install)"
