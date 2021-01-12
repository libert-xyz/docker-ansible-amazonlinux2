
# Dockerfile AmazonLinux2 Ansible

[![Docker Automated build](https://img.shields.io/docker/automated/libertxyz/docker-ansible-amazonlinux2.svg?maxAge=2592000)](https://hub.docker.com/r/libertxyz/docker-ansible-amazonlinux2)


[![CI](https://github.com/libert-xyz/docker-ansible-amazonlinux2/workflows/Build/badge.svg?branch=master&event=push)](https://github.com/libert-xyz/docker-ansible-amazonlinux2/actions?query=workflow%3ABuild)



[![Build Status](https://travis-ci.com/libert-xyz/docker-ansible-amazonlinux2.svg?branch=master)](https://travis-ci.com/libert-xyz/docker-ansible-amazonlinux2)

## How to Use

## Local

  1. Pull this image from Docker Hub:

  `docker pull libertxyz/docker-ansible-amazonlinux2:latest`

  2. Run a container from the image:

  ```docker run -d --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --volume=`pwd`:/etc/ansible/roles/role_under_test:ro libertxyz/docker-ansible-amazonlinux2```

## Molecule Testing

You can add the Docker image as part of Molecule

```yaml
platforms:
  - name: instance
    image: libertxyz/docker-ansible-amazonlinux2:latest
    command: /sbin/init
    tmpfs:
      - /run
      - /tmp
    volumes:
      - /sys/fs/cgroup:/sys/fs/cgroup:ro
    privileged: True
provisioner:
  name: ansible
verifier:
  name: ansible
```

## Notes

This container is only intented to use to test Ansible Roles and Playbooksm not intended for production use.

## Author

Libert R Schmidt - 2020