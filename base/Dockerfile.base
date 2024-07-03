## base
FROM centos

LABEL email = "hongkyu08@gmail.com"
LABEL name = "hongkyuRyu"
LABEL version = "1.0"
LABEL description = "hadoop-cluster!"

RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum install -y wget
RUN yum -y groupinstall "Development Tools"
RUN yum -y install openssl-devel bzip2-devel libffi-devel


ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone


# python 3.8 설치
ENV PYTHON_VERSION=3.8.0
ENV PYTHON_URL=https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz
RUN wget $PYTHON_URL
RUN tar -xvzf Python-$PYTHON_VERSION.tgz && rm Python-$PYTHON_VERSION.tgz
RUN /Python-$PYTHON_VERSION/configure --enable-optimizations
RUN make altinstall
RUN ln -s /usr/local/bin/python3.8 /usr/bin/python3
RUN ln -s /usr/local/bin/python3.8 /usr/bin/python

## scala 2.13.6
ENV SCALA_VERSION 2.11.12
RUN wget https://downloads.lightbend.com/scala/${SCALA_VERSION}/scala-${SCALA_VERSION}.tgz
RUN tar -xvzf scala-${SCALA_VERSION}.tgz -C /usr/local && rm scala-${SCALA_VERSION}.tgz
ENV SCALA_HOME /usr/local/scala-${SCALA_VERSION}
ENV PATH $SCALA_HOME/bin:$PATH

# Java 8 설치
RUN yum install -y java-1.8.0-openjdk-devel
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk
ENV PATH $JAVA_HOME/bin:$PATH

COPY entrypoint.sh /usr/local/sbin/entrypoint.sh
RUN chmod +x /usr/local/sbin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]