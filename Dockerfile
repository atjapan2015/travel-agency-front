FROM node:8.11.3

RUN mkdir -p /nodeApp

COPY . /nodeApp/

WORKDIR /nodeApp

RUN npm install grunt -g && \
    npm install && \
    grunt build

RUN ln -s web public && \
    rm -rf src

EXPOSE 8000

CMD ["npm", "start"]
