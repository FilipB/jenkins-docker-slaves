FROM openshift/jenkins-slave-base-centos7

RUN yum install -y epel-release
# not yet available in EPEL, get it directly
RUN curl -LOk http://releases.ansible.com/ansible/rpm/release/epel-7-x86_64/ansible-2.5.0-1.el7.ans.noarch.rpm
RUN yum install -y ansible-2.5.0-1.el7.ans.noarch.rpm && yum clean all -y

RUN chown -R 1001:0 $HOME && \
    chmod -R g+rw $HOME

USER 1001
