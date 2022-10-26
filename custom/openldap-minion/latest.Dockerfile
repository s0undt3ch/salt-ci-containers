FROM docker.io/bitnami/openldap:latest

USER root
RUN install_packages \
    python3-distro \
    python3-jinja2 \
    python3-ldap \
    python3-msgpack \
    python3-pip \
    python3-pycryptodome \
    python3-yaml \
    python3-zmq
RUN pip install pytest-salt-factories
USER 1001
