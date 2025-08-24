FROM apache/hive:${HIVE_VERSION:-3.1.3}

WORKDIR $HIVE_HOME

USER root

COPY ./src $HIVE_HOME

RUN sh "$HIVE_HOME/setup.sh"

USER hive
