
## How to Use

## Local

  1. Pull this image from Docker Hub:

  `docker pull libertxyz/docker-ansible-amazonlinux2:latest`

  2. Run a container from the image:

  `docker run -d --privileged --volume=/sys/fs/cgroup:/sys/fs/cgroup:ro --volume=`pwd`:/etc/ansible/roles/role_under_test:ro libertxyz/docker-ansible-amazonlinux2`

## Molecule Testing

You can add the Docker image as part of Molecule

```yaml
platforms:
  - name: instance
    image: libertxyz/docker-ansible-amazonlinux2:latest
    volumes:
      - /sys/fs/cgroup:/sys/fs/cgroup:ro
```

## Notes

This container is only intented to use to test Ansible Roles and Playbooksm not intended for production use.

## Author

Libert R Schmidt - 2020