FROM node:16
ADD . /app
WORKDIR /app
RUN npm install -g cnpm --registry=https://registry.npm.taobao.org \
    && cnpm install \
    && cnpm install pm2 -g
CMD node start_pm2.js

