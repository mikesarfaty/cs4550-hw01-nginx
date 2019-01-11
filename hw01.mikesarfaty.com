server {
        listen 80;
        listen [::]:80;

        root /home/mikesarfaty/www/main/hw01.mikesarfaty.com;

        index index.html;

        server_name hw01.mikesarfaty.com www.hw01.mikesarfaty.com;

        location / {
                # First attempt to serve request as file, then
                # as directory, then fall back to displaying a 404.
                try_files $uri $uri/ =404;
        }
}
