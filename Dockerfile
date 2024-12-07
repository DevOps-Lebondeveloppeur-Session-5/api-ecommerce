# Intsall NodeJS
FROM node:20

# create work directory
WORKDIR /usr/src/app

# install dependencies
COPY package.json .
RUN npm i

#  Copy project files from source to image
COPY . .

# expose 
EXPOSE 3000

CMD [ "npm", "run", "start" ]