FROM amazonlinux:2

LABEL maintainer="Libert Schmidt"

# Install requirements.
RUN yum makecache fast \
 && yum -y install deltarpm epel-release initscripts \
 && yum -y update \
 && yum -y install \
      sudo \
      which \
      python-pip \
 && yum clean all

# Install Ansible via Pip.
RUN pip install ansible


# Install Ansible inventory file.
RUN mkdir -p /etc/ansible
RUN echo -e '[local]\nlocalhost ansible_connection=local' > /etc/ansible/hosts


#Systemd init -- https://hub.docker.com/_/centos/
VOLUME ["/sys/fs/cgroup"]
CMD ["/usr/sbin/init"]


