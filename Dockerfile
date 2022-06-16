FROM node:12

COPY app okta-bff/app
COPY package.json /okta-bff/package.json
COPY log4js.config.json /okta-bff/log4js.config.json
COPY node_modules /okta-bff/node_modules
RUN mkdir /okta-bff/logs
RUN chmod 775 -R /okta-bff

WORKDIR /okta-bff
ENTRYPOINT [ "npm","run","start" ]    