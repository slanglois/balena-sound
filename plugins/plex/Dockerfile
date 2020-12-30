FROM linuxserver/plex

ENV UDEV=on

# Install extfat
RUN apt --yes update
RUN apt --yes install exfat-fuse

# mounting external disk using s6
RUN mkdir -p /var/run/s6/services/mountdisk
COPY mountdisk.sh /var/run/s6/services/mountdisk/run
