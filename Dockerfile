FROM node:12

WORKDIR /var/www/ghost/
RUN chown -R node:node /usr/local/lib/node_modules
RUN npm install ghost-cli@latest -g &&\
    mkdir -p /var/www/ghost/ &&\
    chmod 775 /var/www/ghost
RUN chown -R node:node /var/www/ghost

USER node
RUN ghost install local --no-start
RUN ghost config --ip 0.0.0.0 --port 2368
EXPOSE 2368
CMD ["node", "current/index.js"]