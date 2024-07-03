# 현재 진행 중입니다. 아직 미완성

## 설치 소프트웨어

- os: centos
- scala 2.13.6
- java 8
- python 3.8

* [Hadoop 3.3.6](https://hadoop.apache.org/)
* [Spark 3.5.1](https://spark.apache.org/)
* [Hive 3.1.3](http://hive.apache.org/)

## 실행하는 법(지금은 오류남)

```
Makefile 이동 후
make build
docker-compose up
```

### Hadoop

ResourceManager: http://localhost:8088
NameNode: http://localhost:9870
HistoryServer: http://localhost:19888
Datanode1: http://localhost:9864
Datanode2: http://localhost:9865
NodeManager1: http://localhost:8042
NodeManager2: http://localhost:8043

### Spark

master: http://localhost:8080
worker1: http://localhost:8081
worker2: http://localhost:8082
history: http://localhost:18080

### Hive

URI: jdbc:hive2://localhost:10000

### Jupyter Notebook

URL: http://localhost:8888
