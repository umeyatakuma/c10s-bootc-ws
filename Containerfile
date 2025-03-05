FROM quay.io/centos-bootc/centos-bootc:stream10

WORKDIR /app

### Hack for installing rootfiles
RUN mkdir -p /var/roothome

RUN dnf config-manager --set-enabled crb
RUN dnf -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-10.noarch.rpm
RUN dnf -y group install --skip-broken Workstation

RUN dnf -y clean all
