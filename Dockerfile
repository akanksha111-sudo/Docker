FROM node:10

RUN groupadd  nodejs  && useradd -m -r -g nodejs nodejs
  

RUN mkdir /abc


WORKDIR /abc

COPY package.json /abc

RUN npm install --production

COPY . /abc

EXPOSE 3000


CMD ["npm", "start"]
