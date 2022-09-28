FROM sonarsource/sonar-scanner-cli
RUN apk add --update nodejs npm
RUN apk add --update npm
RUN mkdir -p /etc/spc/sonar-scanner && cd /etc/spc/sonar-scanner
RUN ls -al
RUN git clone https://github.com/react-boilerplate/react-boilerplate.git && cd react-boilerplate && npx create-react-app my-app 

