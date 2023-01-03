FROM node:alpine
WORKDIR /app
RUN npm i
COPY  ["package*.json", "./"]
COPY package-lock.json ./
COPY ./ ./
CMD ["npm", "run", "start"]
