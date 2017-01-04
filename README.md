# Kirby on Now

> How to deploy Kirby CMS to Now cloud platform

## Notes

- site must be at root level
  - todo: try subdirectory

## Install Now

- RUN npm install -g now

## Setup Dockerfile

- require: apache2, php5, libapache2-mod-php5
- examples:
  - https://github.com/joyent/kirby-preview-base/blob/master/Dockerfile
  - https://github.com/bhurlow/docker-kirby-nginx/blob/master/Dockerfile
  - https://github.com/thezodl/Docker-Kirby-Alpine-PHP-Nginx/blob/master/Dockerfile

## Deploy to Now

- RUN now
