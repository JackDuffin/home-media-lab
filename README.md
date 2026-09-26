# Home Media Lab — Dockerized Jellyfin

A first hands-on project with Docker and a Linux home server: an old laptop running Ubuntu that hosts a Jellyfin media server in a Docker container, streaming to other devices on my home network.

---

## Setup

- **Hardware:** Lenovo IdeaPad 310-15ISK (Intel Core i3-6006U, 12GB RAM)
- **OS:** Ubuntu 24.04.4 LTS
- **Services:**
  - **Jellyfin**: media server, running in Docker
  - **Portainer** (optional): web UI for managing Docker containers
- **Media folders:**
  - `/media/movies`: movies
  - `/media/shows`: TV shows

---

## What it does

- Streams movies and shows to any device on the local network
- Keeps Jellyfin's config and metadata in a Docker volume, separate from the media files, so the container can be updated or recreated without losing settings
- Has an admin account plus restricted user accounts for family members

---

## Running it

1. Install Docker on the host and create the media folders:
```bash
   sudo mkdir -p /media/movies /media/shows
```
2. Run the setup script:
```bash
   chmod +x setup.sh
   ./setup.sh
```
3. Open `http://<laptop-local-ip>:8096` from any device on the network and follow Jellyfin's setup wizard.

---

## Notes

- Keep movies and shows in separate folders so Jellyfin detects the library types correctly.
- The media folders need to be readable by the container, or library scans will fail.
- Create non-admin Jellyfin users for anyone who only needs to watch.
- `setup.sh` uses `--restart=always`, so Jellyfin starts again automatically after a reboot.

---

## Repository contents

- `README.md`: this file
- `setup.sh`: creates the config volume and starts the Jellyfin container
