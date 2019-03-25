FROM node:10.15.1
RUN cat /etc/os-release
RUN npm install -g http
RUN pwd && ls
RUN wget https://raw.githubusercontent.com/NSVPC/hello_node/master/helloworld.js
RUN cat helloworld.js
EXPOSE 80
CMD ["node","helloworld.js"]
