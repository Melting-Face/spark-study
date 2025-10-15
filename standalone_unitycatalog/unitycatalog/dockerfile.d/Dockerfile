FROM unitycatalog/unitycatalog:v0.2.1

WORKDIR /home/unitycatalog

COPY ./src/etc/conf/hibernate.properties ./etc/conf/hibernate.properties

USER 0

RUN mkdir -p ./jars && chown unitycatalog:unitycatalog ./jars

USER unitycatalog

RUN wget --quiet "https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.28/mysql-connector-java-8.0.28.jar" -P ./jars
