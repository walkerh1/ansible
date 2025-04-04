FROM fedora:rawhide
RUN dnf upgrade -y && dnf install -y git ansible
RUN useradd -m testuser -s /bin/bash
RUN echo "testuser:pass" | chpasswd
RUN usermod -aG wheel testuser
ENV USER=testuser
USER testuser
WORKDIR /home/testuser
COPY --chown=testuser:testuser . ansible
