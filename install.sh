cp rsyncd.conf /etc/
cp qubes.Rsync /etc/qubes-rpc
cp qubes-rsync-forwarder@.service /lib/systemd/system
cp qubes-rsync-forwarder.socket /lib/systemd/system

mkdir /home/user/shared
mkdir /home/user/archive

dnf install rsync-daemon
apt install rsync-daemon

systemctl enable rsyncd
systemctl start rsyncd
