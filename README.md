 Home Media Lab — Dockerized Jellyfin

This repository documents my personal **home media lab**, showcasing skills in **Linux system administration, Docker containerization, and home server management**. 
It demonstrates a fully containerized media server environment that is accessible across multiple devices.

---

## System Overview

- **Laptop Specs:** [,Lenovo Lenovo ideapad 310-15ISK,Intel® Core™ i3-6006U × 4, 12GB RAM] 
- **Operating System:** Linux [Ubuntu 24.04.4 LTS]
- **Docker:** Containerized services for media management 
- **Media Folders:**
  - `/media/movies` → Movies
  - `/media/shows` → TV Shows 
- **Services:**
  - **Jellyfin** — Media server with persistent storage and multi-device streaming 
  - **Portainer** — Optional Docker management UI for container oversight

---

## Features

- **Multi-Device Access:** Stream movies and shows on any device connected to the local network 
- **Persistent Storage:** Media and server settings are stored separately for safe, long-term usage 
- **Multi-User Support:** Admin account with additional restricted user accounts for family members or guests 
- **Home Lab Skills Demonstrated:** Linux administration, Docker container management, media server deployment, networked services

---

## Instruction Notes

This section provides **high-level guidance** on setting up and using the home lab:

- **Media Organization:** Keep movies and shows in separate folders (`/media/movies` and `/media/shows`) for easier library management in Jellyfin.
- **Docker Deployment:** Use Docker to run Jellyfin in a container for isolation, portability, and easier updates.
- **Persistent Storage:** Use Docker volumes to store configuration, library metadata, and user data separately from media files to prevent data loss. 
- **Network Access:** The Jellyfin server can be accessed from other devices on the same network using the laptop’s local IP. 
- **Multi-User Accounts:** Create non-admin users in Jellyfin to allow family members to access media without administrative privileges.
- **Optional Management UI:** Portainer can be used to visually monitor and manage all Docker containers on the laptop. 
- **Permissions:** Ensure media folders are readable by Docker and the Jellyfin container to avoid library scanning errors. 

---

## Repository Contents

- `README.md` — Project documentation
- `setup.sh` *(optional)* — Script for automated Docker container deployment 
- `screenshots/` *(optional)* — Visual overview of the Jellyfin and Portainer interfaces 

---

## CV / Portfolio Notes

This project demonstrates practical experience with: 

- Linux system administration and file permissions 
- Docker containerization and volume management 
- Deploying and managing a network-accessible media server 
- Multi-device and multi-user home lab setup
