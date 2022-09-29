FROM sonarsource/sonar-scanner-cli
RUN apk add --update nodejs npm
RUN apk add --update npm
RUN mkdir -p /etc/spc/sonar-scanner && cd /etc/spc/sonar-scanner
RUN ls -al
RUN git clone https://github.com/react-boilerplate/react-boilerplate.git && cd react-boilerplate && npx create-react-app my-app
#COPY ./sonar-scanner.properties /etc/spc/sonar-scanner/react-boilerplate
RUN ls -al
RUN sonar-scanner -Dsonar.projectKey=testproject  -Dsonar.sources=.  -Dsonar.host.url=http://ec2-13-58-155-55.us-east-2.compute.amazonaws.com:9000 -Dsonar.login=sqp_4e323497913e4a5412da96d18ff11942100f8703



