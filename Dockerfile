FROM nginx:alpine
COPY index.html /usr/share/nginx/html
COPY nginx.conf /etc/nginx/
EXPOSE 80
EXPOSE 9080
STOPSIGNAL SIGQUIT
CMD ["nginx", "-g", "daemon off;"]
