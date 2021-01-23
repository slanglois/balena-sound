FROM linuxserver/plex

ENV UDEV=on

# Install extfat
RUN apt --yes update
RUN apt --yes install exfat-fuse

# Tiny hack to mount the disk when the container starts
# by adding a line just after the shebang, in the entry point /init
RUN sed -ie '/^#!/a [ -b /dev/sda1 ] && mount /dev/sda1 /mnt' /init
