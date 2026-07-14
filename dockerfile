FROM nginx:stable-alpine 

COPY nginx/nginx.conf /etc/nginx/nginx.conf

COPY index.html /usr/share/nginx/html/index.html

RUN mkdir -p /run/nginx /var/cache/nginx /var/log/nginx && \
    chown -R nginx:nginx /run/nginx /var/cache/nginx /var/log/nginx /usr/share/nginx/html


USER nginx

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://localhost/ || exit 1