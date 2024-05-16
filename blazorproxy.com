server {
    listen       80;
    listen  [::]:80;
    server_name  localhost;

    location /blazor/ {
        proxy_pass http://blazor_app/;
    }
}