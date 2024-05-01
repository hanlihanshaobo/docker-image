FROM node:16
ADD . /app
WORKDIR /app
RUN npm install -g cnpm  \
    && cnpm install \
    && cnpm install pm2 -g
CMD node start_pm2.js

