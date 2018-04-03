FROM openshift/jenkins-slave-base-centos7

RUN yum install -y epel-release
RUN yum install -y ansible wget && yum clean all -y


RUN chown -R 1001:0 $HOME && \
    chmod -R g+rw $HOME

USER 1001
