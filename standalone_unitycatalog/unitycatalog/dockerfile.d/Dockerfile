FROM unitycatalog/unitycatalog:v0.2.1

COPY ./src/etc/conf/. $HOME/etc/conf/

USER 0

# classpath 및 jar 파일추가
RUN printf ":%s" "$HOME/mysql-connector-java-8.0.28.jar" >> "$HOME/server/target/classpath" && \
      wget --quiet "https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.28/mysql-connector-java-8.0.28.jar"

USER unitycatalog
