FROM node:18-alpine

WORKDIR /jenkins

COPY package.json package-lock.json ./
RUN npm install

COPY . . 

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]