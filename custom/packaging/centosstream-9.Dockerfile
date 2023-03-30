FROM quay.io/centos/centos:stream9

RUN yum update -y \
  && yum -y install python3 python3-pip openssl git rpmdevtools rpmlint \
    systemd-units libxcrypt-compat git gnupg2 jq createrepo rpm-sign rustc epel-release \
  && yum -y install patchelf \
  && python3 -m pip install awscli
