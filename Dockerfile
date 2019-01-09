FROM nginx:latest

ADD ./dist /usr/share/nginx/html

EXPOSE 80

COPY nginx.conf /etc/nginx/conf.d/default.conf

RUN /bin/bash -c 'echo init ok!!!'

CMD ["nginx","-g","daemon off;"]