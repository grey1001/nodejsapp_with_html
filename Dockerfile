FROM nginx

COPY index.html /usr/share/nginx/html

EXPOSE 80

STOPSIGNAL SIGQUIT

CMD ["nginx", "-g", "daemon off;"]
