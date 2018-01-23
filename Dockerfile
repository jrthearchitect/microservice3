FROM ubuntu
WORKDIR /app
RUN apt-get -y update \
    && apt-get -y install  git \
    && apt-get -y install  nodejs \
    && apt-get -y install npm \
    && apt-get -y install nodejs-legacy
RUN git clone https://github.com/jthearchitect/microservice1.git /app/. &&  git fetch
ENV APP_PORT=8000
ENV PLAID_CLIENT_ID=5a5f9fa8efe64e3042148603
ENV PLAID_SECRET=af0b25ea24682086907b55fb6f8dbd
ENV PLAID_PUBLIC_KEY=e03cedfb69dd33aa0c71c50aab6569
ENV PLAID_ENV=sandbox
RUN npm install
CMD ["node", "index.js"]
EXPOSE 8081
