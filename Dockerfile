FROM ubuntu:noble
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential && \
    apt-add-repository -y ppa:ansible/ansible
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y ansible && \
    apt-get clean autoclean && \
    apt-get autoremove --yes
WORKDIR /root
COPY . ansible
