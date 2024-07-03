FROM clusterbase

# Hive 설치
ENV HIVE_VERSION=3.1.3
ENV HIVE_URL=https://archive.apache.org/dist/hive/hive-$HIVE_VERSION/apache-hive-$HIVE_VERSION-bin.tar.gz
ENV HIVE_HOME=/opt/hive
RUN wget $HIVE_URL -o /tmp/hive.tar.gz && \
    tar -xzf /tmp/hive.tar.gz -C /opt/ && \
    mv /opt/apache-hive-$HIVE_VERSION-bin $HIVE_HOME && \
    rm /tmp/hive.tar.gz
ENV HIVE_CONF_DIR=$HIVE_HOME/conf
ENV PATH=$HIVE_HOME/bin:$PATH


COPY conf/hive-site.xml $HIVE_CONF_DIR/

RUN ln -s $HIVE_CONF_DIR/hive-site.xml $SPARK_CONF_DIR/







