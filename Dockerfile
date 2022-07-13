FROM node:slim

RUN apt-get update
RUN apt install -y git gcc postgresql postgresql-client
RUN apt install -y libpq-dev

COPY package.json .
RUN npm install

RUN mkdir -p blackstar_dev_blog_website
COPY . /blackstar_dev_blog_website/

WORKDIR /blackstar_dev_blog_website

CMD ["npm", "start"]