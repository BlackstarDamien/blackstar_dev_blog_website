FROM node:slim

RUN apt-get update

COPY package.json .

RUN mkdir -p blackstar_blog_website
COPY . /blackstar_blog_website/

WORKDIR /blackstar_blog_website