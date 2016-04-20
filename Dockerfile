# DevOps Node js Dockerfile
FROM registry.ng.bluemix.net/tonye
MAINTAINER Tony Efremenko "tonye1@us.ibm.com"

#Install the applciation
ADD package.json /app/package.json
RUN cd /app && npm install
COPY public /app/public
ENV WEB_PORT 80
EXPOSE 80

#define the command to run the application when the container starts
CMD ["node","/app/appjs"
