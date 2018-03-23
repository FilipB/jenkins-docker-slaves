FROM openshift/jenkins-slave-base-centos7
RUN yum install -y epel-release

ENV GO_TAR_URL=https://dl.google.com/go/go1.10.linux-amd64.tar.gz \
    GO_TAR_NAME=go1.10.linux-amd64.tar.gz

# Install python and selenium binding
RUN yum install -y npm docker sudo && yum clean all && \
  curl -LOk ${GO_TAR_URL} && \
  tar -xzf ${GO_TAR_NAME} && \
  mv go /usr/local && \
  rm -rf ${GO_TAR_NAME}

RUN useradd -d ${HOME} -u 1001 -g 0 -G wheel -m -s /bin/bash default

# Allow the wheel group to use sudo without a password 
RUN echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers

ADD contrib/bin/configure-slave /usr/local/bin/configure-slave

RUN chown -R 1001:0 $HOME && \
    chmod -R g+rw $HOME

USER 1001
