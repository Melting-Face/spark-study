FROM spark:3.5.3-scala2.12-java11-r-ubuntu

WORKDIR $SPARK_HOME

COPY ./src $SPARK_HOME

USER 0

RUN sh "$SPARK_HOME/setup.sh"

ENV PATH=$SPARK_HOME/bin:/opt/spark/.venv/bin:$PATH

RUN R -e "install.packages('IRkernel')" && \
 R -e "IRkernel::installspec(name='r', displayname='R (irkernel)')"

USER 185

ENTRYPOINT sh "$SPARK_HOME/entrypoint.sh"
