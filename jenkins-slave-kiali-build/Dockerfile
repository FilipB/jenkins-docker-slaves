FROM openshift/jenkins-slave-base-centos7
RUN yum install -y epel-release

ENV GO_TAR_URL=https://dl.google.com/go/go1.10.linux-amd64.tar.gz \
    GO_TAR_NAME=go1.10.linux-amd64.tar.gz

# Install python and selenium binding
RUN yum install -y npm docker && yum clean all && \
  curl -LOk ${GO_TAR_URL} && \
  tar -xzf ${GO_TAR_NAME} && \
  mv go /usr/local && \
  echo "Added by Dockerfile" >> $HOME/.bash_profile && \
  echo "export GOROOT=/usr/local/go" >> $HOME/.bash_profile && \
  echo "export PATH=$GOROOT/bin:$PATH" >> $HOME/.bash_profile && \
  rm -rf ${GO_TAR_NAME}

RUN ls -al $HOME && cat $HOME/.bash_profile

RUN chown -R 1001:0 $HOME && \
    chmod -R g+rw $HOME

USER 1001
