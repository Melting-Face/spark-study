export SPARK_WORKER_CORES=4
export SPARK_WORKER_MEMORY=4g
export SPARK_WORKER_PORT=7080
export SPARK_WORKER_OPTS="-Dspark.worker.cleanup.enabled=true \
-Dspark.worker.cleanup.interval=1800 \
-Dspark.worker.cleanup.appDataTtl=172800"
