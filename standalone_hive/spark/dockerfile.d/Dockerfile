FROM spark:3.5.6-scala2.12-java11-python3-ubuntu

ENV PATH=$SPARK_HOME/bin:$PATH

COPY ./src $SPARK_HOME

USER 0

RUN sh $SPARK_HOME/setup.sh

USER 185
