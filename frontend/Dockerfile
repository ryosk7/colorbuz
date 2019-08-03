FROM node:8-alpine
RUN npm install -g vue-cli
RUN npm install -g firebase-tools
WORKDIR /myapp/frontend
ENV HOST 0.0.0.0
EXPOSE 3000
# settings for Firebase login
USER node
COPY --chown=node:node . WORKDIR