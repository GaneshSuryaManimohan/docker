FROM almalinux:9
RUN dnf install nginx -y
RUN rm -rf /ush/share/nginx/html/index.html
COPY index.html /ush/share/nginx/html/index.html
CMD ["nginx", "-g", "daemon off;"]