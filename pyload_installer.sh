
pacman -Syyu --noconfirm gcc python-pip
pip install pyload-ng





/usr/bin/pyload

[root@VOD ~]# cat /usr/lib/systemd/system/jellyfin.service
[Unit]
Description=Jellyfin Media Server
After=network.target

[Service]
User=jellyfin
EnvironmentFile=/etc/conf.d/jellyfin
ExecStart=/usr/lib/jellyfin/bin/jellyfin --datadir ${JELLYFIN_DATA_DIRECTORY} --cachedir ${JELLYFIN_CACHE_DIRECTORY} ${JELLYFIN_ADD_OPTS}
Restart=on-abort
TimeoutSec=20

[Install]
WantedBy=multi-user.target




