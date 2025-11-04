FROM apache/spark:3.5.3

WORKDIR $SPARK_HOME

COPY ./src $SPARK_HOME

USER 0

RUN sh "$SPARK_HOME/setup.sh"

ENV PATH=$SPARK_HOME/bin:/opt/spark/.venv/bin:$PATH

USER 185

ENTRYPOINT sh "$SPARK_HOME/entrypoint.sh"
