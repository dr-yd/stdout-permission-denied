# stdout-permission-denied

Demo repo for a permission issue with PHP-FPM in Docker where a process is unable to write to /dev/stdout. Start with `docker-compose up`.

    app_1  | PID 56
    app_1  | www-data
    app_1  | dr-x------ 2 www-data www-data  0 Jan 11 16:54 .
    app_1  | dr-xr-xr-x 9 www-data www-data  0 Jan 11 16:54 ..
    app_1  | lr-x------ 1 www-data www-data 64 Jan 11 16:54 0 -> /dev/null
    app_1  | l-wx------ 1 www-data www-data 64 Jan 11 16:54 1 -> pipe:[285021]
    app_1  | l-wx------ 1 www-data www-data 64 Jan 11 16:54 2 -> pipe:[285021]
    app_1  | lr-x------ 1 www-data www-data 64 Jan 11 16:54 255 -> /usr/local/bin/script.sh
    app_1  | /usr/local/bin/script.sh: line 6: /proc/56/fd/1: Permission denied
    app_1  | /usr/local/bin/script.sh: line 7: /proc/56/fd/2: Permission denied
