##
##
## Arch Linux Baseimage + ArchAssault Repo
##
##

FROM base/archlinux:latest

ADD ./Configuration/ /

RUN rm -fr /etc/pacman.conf && \
    rm -fr /usr/share/pacman/keyrings/ && \
    tar -xvf /config.tar && \
    rm -f /config.tar && \
    pacman-key --init && \
    pacman-key --populate archlinux &&\
    pacman-key --populate archassault &&\
    pacman -Sy
    
##ENTRYPOINT ["/bin/bash"]
