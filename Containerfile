FROM nginx:alpine

# Copy all static assets
COPY index.html favicon.svg logo.svg /usr/share/nginx/html/

# Custom nginx config for SPAs and cache control
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
