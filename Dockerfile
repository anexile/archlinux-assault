##
##
## Arch Linux Baseimage + ArchAssault Repo
##
##

FROM base/archlinux:latest

RUN echo "[archassault]" >> /etc/pacman.conf
RUN echo "Server = http://repo.archassault.org/archassault/\$repo/os/\$arch" >> /etc/pacman.conf
RUN pacman-key -r CC1D2606
RUN pacman-key --lsign CC1D2606
#RUN pacman-key --init
#RUN pacman-key --populate archassault
RUN pacman -Sy --noconfirm archassault-keyring archassault-mirrorlist

##ENTRYPOINT ["/bin/bash"]
