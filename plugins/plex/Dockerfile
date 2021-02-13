FROM linuxserver/plex

ENV UDEV=on

# Install extfat
RUN apt --yes update
RUN apt --yes install exfat-fuse

# Copy UDEV rules and scripts for mounting external drive
COPY extdrive.rules /etc/udev/rules.d
COPY scripts /usr/src/scripts
RUN chmod a+x /usr/src/scripts/*
