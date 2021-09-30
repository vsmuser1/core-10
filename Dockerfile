FROM node:13-alpine
RUN apk add --no-cache python g++ make
WORKDIR /app
COPY . .
RUN yarn install --production
EXPOSE 5000
CMD ["node", "src/index.js"]
