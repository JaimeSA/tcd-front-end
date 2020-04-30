FROM node:12.16.2

#App Directory
WORKDIR tcd-app

# add `/tcd-app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install tcd-app dependencies
# COPY ./tcd-app/package*.json ./

# RUN npm install --silent
# RUN npm build
# RUN npm install -g serve

# add app
COPY . .

# start app
#CMD ["npm", "start:prod"]
CMD ["serve", "s", "build"]