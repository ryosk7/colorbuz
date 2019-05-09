FROM node:10.15.3-jessie
RUN npm install -g vue-cli
WORKDIR /myapp/frontend
ENV HOST 0.0.0.0
EXPOSE 8000
USER node
COPY --chown=node:node . WORKDIR