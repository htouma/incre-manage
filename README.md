# incre-manage

sync via remote git


# Usage

## source-server:

prepared git directory

```
cd /var/www/html/xxxx
git init
git add -A
git commit -m '1st commit'
git remote add origin https://github.com/xxxx/xxxx.git
git push -u origin master
```

```
crontab -e

## git sync
*/30 * * * * /usr/local/bin/cron_push.sh /var/www/html/xxxx
```

## dist-server:

```
cd /var/www/html
git clone https://github.com/xxxx/xxxx.git
```

```
crontab -e

## git sync
*/30 * * * * /root/bin/cron_pull.sh /var/www/html/xxxx
```

# Author

htouma
