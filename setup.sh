   #!/bin/bash
   docker volume create jellyfin_config

   docker run -d \
     --name jellyfin \
     --restart=always \
     -p 8096:8096 \
     -v /media/movies:/media/movies \
     -v /media/shows:/media/shows \
     -v jellyfin_config:/config \
     jellyfin/jellyfin:latest
