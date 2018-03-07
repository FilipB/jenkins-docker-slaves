FROM openshift/jenkins-slave-base-centos7

ENV CLIENT_TOOLS_URL_PREF=https://github.com/openshift/origin/releases/download/v3.7.0/ \
    CLIENT_TOOLS_NAME=openshift-origin-client-tools-v3.7.0-7ed6862-linux-64bit \
    CLIENT_TOOLS_EXT=.tar.gz

RUN yum install -y epel-release
RUN yum install -y ansible wget && yum clean all -y && \
    curl -LOk ${CLIENT_TOOLS_URL_PREF}${CLIENT_TOOLS_NAME}${CLIENT_TOOLS_EXT} && \
    tar -xzf  ${CLIENT_TOOLS_NAME}${CLIENT_TOOLS_EXT} && \
    cp ${CLIENT_TOOLS_NAME}/oc /usr/bin && \
    rm -rf ${CLIENT_TOOLS_NAME}*



RUN chown -R 1001:0 $HOME && \
    chmod -R g+rw $HOME

USER 1001
