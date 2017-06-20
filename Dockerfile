FROM node:4.8
RUN node install -g bower polymer-cli
RUN bower i
EXPOSE 8080
CMD ["polymer serve --port 8080"]
