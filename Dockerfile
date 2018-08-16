FROM node:latest 
MAINTAINER Yuri Tceretian <yuri.t@elastic.co>

ADD ./package.json package.json
RUN npm install -g bower
RUN npm install

ADD ./bower.json bower.json
RUN bower install --allow-root

EXPOSE 7000 7000 

# ADD ./node_modules node_modules
ADD ./lib lib
ADD ./views views
ADD ./app.js app.js
ADD ./config.js config.js
ADD ./idp-public-cert.pem idp-public-cert.pem
ADD ./idp-private-key.pem idp-private-key.pem
ADD ./public public
ADD ./server.crt server.crt
ADD ./server.key server.key



ENTRYPOINT [ "node",  "app.js", "--https", "--httpsCert", "./server.crt", "--httpsPrivateKey", "./server.key" ]
