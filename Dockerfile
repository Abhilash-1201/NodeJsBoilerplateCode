FROM sonarsource/sonar-scanner-cli
RUN apk add --update nodejs npm
RUN apk add --update npm
RUN mkdir -p /etc/spc/sonar-scanner && cd /etc/spc/sonar-scanner
RUN ls -al
RUN git clone https://github.com/react-boilerplate/react-boilerplate.git && cd react-boilerplate && npx create-react-app my-app
#COPY ./sonar-scanner.properties /etc/spc/sonar-scanner/react-boilerplate
RUN ls -al
RUN sonar-scanner -Dsonar.projectKey=nodejs  -Dsonar.sources=.  -Dsonar.host.url=ec2-13-58-155-55.us-east-2.compute.amazonaws.com -Dsonar.login=sqp_a65f01accf739fe1352f95cc3ab3ebd10514b942



