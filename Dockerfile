FROM node:18

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
COPY prisma ./prisma/

RUN npm install

RUN npx prisma generate

# Bundle app source
COPY . .

# Expose port 3000

EXPOSE 4000

CMD [ "npm", "start" ]