FROM cluserbase

# SPARK 설치
ENV SPARK_VERSION=3.5.1
ENV HADOOP_VERSION=3
ENV SCALA_VERSION=2.13
RUN wget https://downloads.apache.org/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}-scala${SCALA_VERSION}.tgz \
    && tar -xzf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}-scala${SCALA_VERSION}.tgz \
    && mv spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}-scala${SCALA_VERSION} /usr/local/spark \
    && rm spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}-scala${SCALA_VERSION}.tgz \
    && wget https://jdbc.postgresql.org/download/postgresql-42.3.2.jar -o $SPARK_HOME/jars/postgresql-42.3.2.jar
ENV SPARK_HOME=/opt/spark
ENV PYTHONHASHSEED=1
ENV PYSPARK_PYTHON=python3
ENV SPARK_CONF_DIR=$SPARK_HOME/conf
ENV PATH=$SPARK_HOME/bin:$PATH

COPY conf/spark-defaults.conf $SPARK_CONF_DIR/
COPY conf/log4j.properties $SPARK_CONF_DIR/

RUN ln -s $HADOOP_CONF_DIR/workers $SPARK_CONF_DIR/
