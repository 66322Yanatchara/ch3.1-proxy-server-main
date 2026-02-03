# Nginx Setup Guide

## Overview
This guide details the setup and configuration of the Nginx Reverse Proxy in our project.

## Configuration Structure
- **nginx/nginx.conf**: The main configuration file. It sets global settings like worker processes, logging, and gzip compression.
- **nginx/conf.d/defaut.conf**: Defines the server block, effectively routing traffic.
    - `/` -> Served statically from `/usr/share/nginx/html` (Frontend)
    - `/api` -> Proxied to `backend:3000`
    - `/health` -> Returns 200 OK
- **nginx/ssl/**: Directory for SSL certificates.

## SSL Setup
To enable SSL:
1. Generate or obtain `cert.pem` and `key.pem`.
2. Place them in `nginx/ssl/`.
3. Rename `nginx/conf.d/ssl.conf.template` to `ssl.conf` and uncomment the relevant lines.
4. Restart Nginx: `docker-compose restart nginx`

## Common Commands
- **Test Config**: `docker-compose exec nginx nginx -t`
- **Reload Config**: `docker-compose exec nginx nginx -s reload`
- **Check Logs**: `docker-compose logs -f nginx`
