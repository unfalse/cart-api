# eb cli commands output (for task 8)

```
$ eb init -r eu-west-1 unfalse-cart-api

It appears you are using Docker. Is this correct?
(Y/n): y
Select a platform branch.
1) Docker running on 64bit Amazon Linux 2
2) Multi-container Docker running on 64bit Amazon Linux (Deprecated)
3) Docker running on 64bit Amazon Linux (Deprecated)
(default is 1): 3

Alert: You chose a deprecated platform branch. It might not be supported in the future.

Do you wish to continue with CodeCommit? (Y/n): n
Do you want to set up SSH for your instances?
(Y/n): n
```

```
$ eb create develop -s -c unfalse-cart-api-develop
Alert: You chose a deprecated platform branch. It might not be supported in the future.

Creating application version archive "app-32fc-210923_071059".
Uploading unfalse-cart-api/app-32fc-210923_071059.zip to S3. This may take a while.
Upload Complete.
Environment details for: develop
  Application name: unfalse-cart-api
  Region: eu-west-1
  Deployed Version: app-32fc-210923_071059
  Environment ID: e-5ynkqy8xxb
  Platform: arn:aws:elasticbeanstalk:eu-west-1::platform/Docker running on 64bit Amazon Linux/2.16.11
  Tier: WebServer-Standard-1.0
  CNAME: unfalse-cart-api-develop.eu-west-1.elasticbeanstalk.com
  Updated: 2021-09-23 02:11:00.933000+00:00
Alert: Your environment is using a deprecated platform branch. It might not be supported in the future.

Printing Status:
2021-09-23 02:11:00    INFO    createEnvironment is starting.
2021-09-23 02:11:01    INFO    Using elasticbeanstalk-eu-west-1-030019190562 as Amazon S3 storage bucket for environment data.
2021-09-23 02:11:20    INFO    Created security group named: awseb-e-5ynkqy8xxb-stack-AWSEBSecurityGroup-1L3H3ZVZDRBZY
2021-09-23 02:11:35    INFO    Created EIP: 63.32.220.54
2021-09-23 02:12:26    INFO    Waiting for EC2 instances to launch. This may take a few minutes.
2021-09-23 02:13:22    INFO    Successfully pulled node:14.17-alpine
2021-09-23 02:15:25    INFO    Successfully built aws_beanstalk/staging-app
2021-09-23 02:15:34    INFO    Docker container 671902dab6c3 is running aws_beanstalk/current-app.
2021-09-23 02:15:50    INFO    Application available at unfalse-cart-api-develop.eu-west-1.elasticbeanstalk.com.
2021-09-23 02:15:51    INFO    Successfully launched environment: develop
```

```
$ eb deploy
Alert: Your environment is using a deprecated platform branch. It might not be supported in the future.

Creating application version archive "app-32fc-210924_072400".
Uploading unfalse-cart-api/app-32fc-210924_072400.zip to S3. This may take a while.
Upload Complete.
2021-09-24 02:24:01    INFO    Environment update is starting.      
2021-09-24 02:24:05    INFO    Deploying new version to instance(s).
2021-09-24 02:24:12    INFO    Successfully pulled node:14.17-alpine
2021-09-24 02:24:12    INFO    Successfully built aws_beanstalk/staging-app
2021-09-24 02:24:31    INFO    Docker container 1cdac6b9f7a9 is running aws_beanstalk/current-app.
2021-09-24 02:24:39    INFO    New application version was deployed to running EC2 instances.
2021-09-24 02:24:39    INFO    Environment update completed successfully.
```

<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo_text.svg" width="320" alt="Nest Logo" /></a>
</p>

[travis-image]: https://api.travis-ci.org/nestjs/nest.svg?branch=master
[travis-url]: https://travis-ci.org/nestjs/nest
[linux-image]: https://img.shields.io/travis/nestjs/nest/master.svg?label=linux
[linux-url]: https://travis-ci.org/nestjs/nest
  
  <p align="center">A progressive <a href="http://nodejs.org" target="blank">Node.js</a> framework for building efficient and scalable server-side applications, heavily inspired by <a href="https://angular.io" target="blank">Angular</a>.</p>
    <p align="center">
<a href="https://www.npmjs.com/~nestjscore"><img src="https://img.shields.io/npm/v/@nestjs/core.svg" alt="NPM Version" /></a>
<a href="https://www.npmjs.com/~nestjscore"><img src="https://img.shields.io/npm/l/@nestjs/core.svg" alt="Package License" /></a>
<a href="https://www.npmjs.com/~nestjscore"><img src="https://img.shields.io/npm/dm/@nestjs/core.svg" alt="NPM Downloads" /></a>
<a href="https://travis-ci.org/nestjs/nest"><img src="https://api.travis-ci.org/nestjs/nest.svg?branch=master" alt="Travis" /></a>
<a href="https://travis-ci.org/nestjs/nest"><img src="https://img.shields.io/travis/nestjs/nest/master.svg?label=linux" alt="Linux" /></a>
<a href="https://coveralls.io/github/nestjs/nest?branch=master"><img src="https://coveralls.io/repos/github/nestjs/nest/badge.svg?branch=master#5" alt="Coverage" /></a>
<a href="https://gitter.im/nestjs/nestjs?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=body_badge"><img src="https://badges.gitter.im/nestjs/nestjs.svg" alt="Gitter" /></a>
<a href="https://opencollective.com/nest#backer"><img src="https://opencollective.com/nest/backers/badge.svg" alt="Backers on Open Collective" /></a>
<a href="https://opencollective.com/nest#sponsor"><img src="https://opencollective.com/nest/sponsors/badge.svg" alt="Sponsors on Open Collective" /></a>
  <a href="https://paypal.me/kamilmysliwiec"><img src="https://img.shields.io/badge/Donate-PayPal-dc3d53.svg"/></a>
  <a href="https://twitter.com/nestframework"><img src="https://img.shields.io/twitter/follow/nestframework.svg?style=social&label=Follow"></a>
</p>
  <!--[![Backers on Open Collective](https://opencollective.com/nest/backers/badge.svg)](https://opencollective.com/nest#backer)
  [![Sponsors on Open Collective](https://opencollective.com/nest/sponsors/badge.svg)](https://opencollective.com/nest#sponsor)-->

## Description

[Nest](https://github.com/nestjs/nest) framework TypeScript starter repository.

## Installation

```bash
$ npm install
```

## Running the app

```bash
# development
$ npm run start

# watch mode
$ npm run start:dev

# production mode
$ npm run start:prod
```

## Test

```bash
# unit tests
$ npm run test

# e2e tests
$ npm run test:e2e

# test coverage
$ npm run test:cov
```

## Support

Nest is an MIT-licensed open source project. It can grow thanks to the sponsors and support by the amazing backers. If you'd like to join them, please [read more here](https://docs.nestjs.com/support).

## Stay in touch

- Author - [Kamil Myśliwiec](https://kamilmysliwiec.com)
- Website - [https://nestjs.com](https://nestjs.com/)
- Twitter - [@nestframework](https://twitter.com/nestframework)

## License

  Nest is [MIT licensed](LICENSE).
