FROM lambci/lambda:nodejs10.x-beta

COPY ./lambda-function/main.js /var/task/main.js
