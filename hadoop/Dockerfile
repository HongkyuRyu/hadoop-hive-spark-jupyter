# Hadoop 설치
# clusterbase는 앞서, base폴더 내에 있는 Dockerfile.base 빌드
# docker build -t clusterbase -f Dockerfile.base .
FROM clusterbase

ENV HADOOP_VERSION 3.3.6
RUN wget https://downloads.apache.org/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz \
    && tar -xzf hadoop-${HADOOP_VERSION}.tar.gz \
    && mv hadoop-${HADOOP_VERSION} /usr/local/hadoop \
    && rm hadoop-${HADOOP_VERSION}.tar.gz

ENV HADOOP_HOME /opt/hadoop
ENV PATH $HADOOP_HOME/bin:$PATH
ENV PATH $HADOOP_HOME/sbin:$PATH

ENV HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
ENV PATH=$HADOOP_HOME/bin:$PATH
ENV LD_LIBRARY_PATH=$HADOOP_HOME/lib/native:$LD_LIBRARY_PATH