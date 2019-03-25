FROM node:10.15.1
ENV DOCKERVERSION=18.09.2
RUN curl -fsSLO https://download.docker.com/linux/static/stable/x86_64/docker-${DOCKERVERSION}.tgz \
  && tar xzvf docker-${DOCKERVERSION}.tgz --strip 1 \
                 -C /usr/local/bin docker/docker \
  && rm docker-${DOCKERVERSION}.tgz
RUN cat /etc/os-release
RUN npm install -g http
RUN pwd && ls
RUN wget https://raw.githubusercontent.com/NSVPC/hello_node/master/helloworld.js
RUN cat helloworld.js
EXPOSE 80
CMD ["node","helloworld.js"]
