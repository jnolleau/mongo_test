FROM mongo-express:latest

RUN mkdir -p /db

COPY ./restaurants.json /db/