#!/bin/bas
hdocker volume create jellyfin_config
docker run -d -p 8096:8096 --name jellyfin --restart=always \-v /media/movies:/media/movies \-v /media/shows:/media/shows \-v jellyfin_config:/config \jellyfin/jellyfin:latest
