# Beautiful Vue.js app attached to REST API written in Spring Boot.

## Getting Started

These instructions will cover usage information for the docker container 

### Prerequisities


In order to run this container you'll need docker installed.

* [Windows](https://docs.docker.com/windows/started)
* [OS X](https://docs.docker.com/mac/started/)
* [Linux](https://docs.docker.com/linux/started/)

### Usage


Build with single command

```shell
docker-compose up
```


#### Volumes

* Windows
    * `C:/Users/yourUsernameGoesHere/appLogs` - Spring Boot logging
    * `C:/Users/yourUsernameGoesHere/mysqlBackup` - MySQL data
    * `C:/Users/yourUsernameGoesHere/luceneIndex` - Lucene indexing data
* Linux
    * /appLogs
    * /mysqlBackup
    * /luceneIndex



## Built With

* MySQL 5.7
* Spring Boot v2.1.6 
* Spring v5.1.8
* Vue.js v3
    * vue/cli v3.9.3
    * axios v0.19.0
    * vue-router latest
    * Bootstrap


## Authors

* **Jozo Spajic** - *Initial work* - [jspajic](https://github.com/jspajic)
