FROM node:10-alpine
RUN mkdir /home/app
WORKDIR /app
RUN mkdir source
COPY source/ source/.
COPY package.json tsconfig.json ./
RUN npm install
RUN npm run compile
CMD ["npm", "start"]