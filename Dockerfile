FROM node:lts
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

#RUN npm install
# If you are building your code for production
RUN npm ci --only=production

#VOLUME ['/app/commands.yml']

# Bundle app source
COPY . .

EXPOSE 5000
CMD [ "npm", "start" ]
