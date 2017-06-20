FROM node:8.1.2
RUN node install bower polymer-cli
RUN bower i
EXPOSE 8080
CMD ["polymer serve --port 8080"]
