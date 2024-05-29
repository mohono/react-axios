FROM node:18-alpine
WORKDIR /react-docker-example/
COPY public/ /react-docker-example/public
COPY src/ /react-docker-example/src
COPY package.json /react-docker-example/
RUN npm install
EXPOSE 3000
ENV secret=mySecret1234
CMD ["npm", "start"]
