FROM node:13.7.0-buster

ENV LANG C.UTF-8
ENV TZ Asia/Tokyo

EXPOSE 8080

WORKDIR /app

COPY . .
RUN npm i
# RUN npm run build

CMD npm run start
