FROM node:14-alpine
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

#RUN npm install
# If you are building your code for production
RUN npm ci --only=production

VOLUME ['/usr/src/app/commands.yml']

# Bundle app source
COPY . .

CMD [ "npm", "start" ]
