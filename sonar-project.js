const sonarqubeScanner = require('sonar');
     sonarqubeScanner({
       serverUrl: 'http://54.216.155.5:9000',
       options : {
       'sonar.sources': '.',
       'sonar.inclusions' : 'src/**' // Entry point of your code
       }
     }, () => {});
