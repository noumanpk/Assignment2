FROM node:10.15.3
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app
RUN npm install
RUN npm run ng -- build 
COPY . /usr/src/app
EXPOSE 4200
CMD ["npm","start"]
