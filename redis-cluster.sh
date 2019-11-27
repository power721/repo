#!/usr/bin/env bash

sudo apt-get update
sudo apt-get install -y build-essential tcl ruby
cd /tmp
curl -O http://download.redis.io/redis-stable.tar.gz
tar xzvf redis-stable.tar.gz
cd redis-stable
make
make test
sudo make install
sudo mkdir /etc/redis
sudo cp /tmp/redis-stable/redis.conf /etc/redis
sudo sed -i 's/supervised no/supervised systemd/' /etc/redis/redis.conf
sudo sed -i 's/protected-mode yes/protected-mode no/' /etc/redis/redis.conf
sudo sed -i 's/bind 127.0.0.1/#bind 127.0.0.1/' /etc/redis/redis.conf
sudo sed -i 's/# cluster-enabled yes/cluster-enabled yes/' /etc/redis/redis.conf
sudo sed -i 's#logfile ""#logfile "/var/lib/redis/redis.log"#' /etc/redis/redis.conf
sudo sed -i 's#dir ./#dir /var/lib/redis#' /etc/redis/redis.conf
cat >redis.service <<EOF
[Unit]
Description=Redis In-Memory Data Store
After=network.target

[Service]
User=redis
Group=redis
ExecStart=/usr/local/bin/redis-server /etc/redis/redis.conf
ExecStop=/usr/local/bin/redis-cli shutdown
Restart=always

[Install]
WantedBy=multi-user.target
EOF

sudo cp redis.service /etc/systemd/system/redis.service

sudo adduser --system --group --no-create-home redis
sudo mkdir /var/lib/redis
sudo chown redis:redis /var/lib/redis
sudo chmod 770 /var/lib/redis

sudo systemctl start redis
sudo systemctl status redis

