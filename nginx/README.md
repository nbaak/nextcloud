# Nginx Config
Edit, install and link the nginx config

## Edit
Open the `nextcloud.conf` with the editor of your choice and change the `server_name` value to your servername!


## Install
The install.sh copies the config file in your nginx dir, usualy root permissions are needed here.

```bash
sudo ./install.sh
```

## Link
link.sh will create a symlink and 'enables' the config file.

```bash
sudo ./link.sh
``` 

Now you just need to reload or restart the nginx server,

```bash
sudo service nginx restart
```
