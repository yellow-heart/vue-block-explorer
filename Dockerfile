FROM node:10
WORKDIR /app
COPY . /app/
RUN yarn install; exit 0
CMD echo {\"loom_address\": \"${LOOM_ADDRESS}\"} > loom_address.json &&  yarn run serve
