FROM openshift/jenkins-slave-base-centos7
RUN yum install -y epel-release

# Install python and selenium binding
RUN yum install -y install python python2-pip wget && yum clean all && \
    chown -R 0:0 $HOME && \
    pip install selenium

RUN chown -R 1001:0 $HOME && \
    chmod -R g+rw $HOME

USER 1001
