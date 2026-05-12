FROM nginx:alpine

COPY forestos.html /usr/share/nginx/html/forestos.html
COPY config.example.js /usr/share/nginx/html/config.example.js

RUN printf 'server {\n\
    listen 80;\n\
    server_name localhost;\n\
    root /usr/share/nginx/html;\n\
    index forestos.html;\n\
\n\
    location / {\n\
        try_files $uri $uri/ /forestos.html;\n\
    }\n\
\n\
    add_header X-Content-Type-Options "nosniff" always;\n\
    add_header X-Frame-Options "SAMEORIGIN" always;\n\
    add_header X-XSS-Protection "1; mode=block" always;\n\
    add_header Referrer-Policy "strict-origin-when-cross-origin" always;\n\
}\n' > /etc/nginx/conf.d/default.conf

EXPOSE 80
