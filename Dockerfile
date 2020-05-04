FROM node:12.16 as builder
RUN mkdir /usr/src/app
WORKDIR /usr/src/app
ENV PATH /usr/src/app/node_modules/.bin:$PATH
COPY ./tcd-app/package.json /usr/src/app/package.json

RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent
COPY ./tcd-app /usr/src/app
RUN npm run build

# production environment
FROM nginx:alpine
COPY --from=builder /usr/src/app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

#Run> docker run -p 3002:80 -it tcd/front-end