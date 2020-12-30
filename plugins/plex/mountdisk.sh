# Hack using the s6 daemon system to make sure the disk is always mounted

# Mount the disk
mount /dev/sda1 /mnt

# Check it is always there. Otherwise, exits, and s6 will run it again.
while mountpoint -q /mnt
do
  sleep 10
done
