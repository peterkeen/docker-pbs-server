FROM debian:bullseye-slim

ADD policy-rc.d /usr/sbin/policy-rc.d

RUN apt update && apt install -y wget && wget https://enterprise.proxmox.com/debian/proxmox-release-bullseye.gpg -O /etc/apt/trusted.gpg.d/proxmox-release-bullseye.gpg; \
    echo "deb http://download.proxmox.com/debian/pbs bullseye pbs-no-subscription" >> /etc/apt/sources.list.d/pbs.list; \
    apt update && apt install -y proxmox-backup-server ifupdown2-