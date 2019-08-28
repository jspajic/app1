FROM node:lts-alpine
 
# set working directory
RUN mkdir /app
WORKDIR /app

COPY package*.json ./
RUN npm install @vue/cli 
RUN npm install axios
RUN npm install vue-router
RUN npm install bootstrap

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .
# start app
CMD ["npm", "run", "serve"]