# NextCloud
A docker-compose File for a simple nextcloud instance.

## Setup
**This is for users in the docker group!**
If your user is not in the docker group, ask your admin, use the scripts  with sudo or become member of the docker group!

`sudo usermod -aG docker $USER`

Use docker-compose up -d to start the cluser or simply the 'start.sh' Script.

## Usage
start.sh  - starte the cluster
stop.sh   - stops the cluster
update.sh - pulls nextcloud, stops the cluster, removes the old container and starts the cluster again.

## use with NGinx
To use this cluster with NGinx you need to copy the 'nextcloud.conf' into the nginx sites-available using 

`sudo cp nextcloud.conf /etc/nginx/sites-available`

then edit the file and replace the `<your_server_name>` with your server name or ip. After this ceate a symlink to enable this config.

`sudo ln -s /etc/nginix/sites-available/nextcloud.conf /etc/nginx/sites-enabled/nextcloud.conf`

now reload nginx!

`sudo service nginx reload`

## Cron
If you want to use the Cron Service and you want to use the container name, you have to add 'nextcloud' to the trusted_domains array in the nextcloud config. ./data_nextcloud/config/config.php.

You need to set _Webcron_ inside the Nextcloud webui as Cron Type.

```bash
array (
    0 => <default entry>,
    1 => 'nextcloud',
  ),
```
If you want to use your System Cron you can use the cron.sh file. Open crontab -e and enter.

```bash
*/5 * * * * <path to docker-compose.yml>/cron.sh

```
You need to set _Cron_ inside the Nextcloud webui as Cron Type.
