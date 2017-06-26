FROM node:4.8
RUN npm config set proxy $HTTP_PROXY
RUN npm config set https-proxy $HTTPS_PROXY
RUN npm install -g bower polymer-cli

RUN mkdir /build
COPY . /build
RUN cd /build/
RUN bower --allow-root i
EXPOSE 8080
CMD ["polymer serve --port 8080"]
