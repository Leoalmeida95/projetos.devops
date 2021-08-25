# Expor o deamon do docker
    sudo mkdir -p /etc/systemd/system/docker.service.d/
    sudo vi /etc/systemd/system/docker.service.d/override.conf
        [Service]
        ExecStart=
        ExecStart=/usr/bin/dockerd -H fd:// -H tcp://0.0.0.0:2376
    sudo systemctl daemon-reload
    sudo systemctl restart docker.service