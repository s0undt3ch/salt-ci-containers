FROM debian:11

COPY 01_nodoc /etc/dpkg/dpkg.cfg.d/01_nodoc

RUN apt update -y \
  && apt install -y apt-utils gnupg jq awscli python3 python3-venv python3-pip \
    build-essential devscripts debhelper bash-completion git patchelf curl

ENV PATH="/root/.cargo/bin:$PATH"

RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path \
  && rustc --version
