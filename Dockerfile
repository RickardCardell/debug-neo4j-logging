
FROM neo4j:4.2.6

# Some utils
RUN apt-get update && apt-get install -y unzip procps less

# Copy log-properties to a classpath location
COPY log4j* /var/lib/neo4j/conf/

RUN echo "dbms.jvm.additional=-Dlog4j.configuration=file:/var/lib/neo4j/conf/log4j-test.properties \
            -Dlog4j.configurationFile=file:/var/lib/neo4j/conf/log4j-test.xml \
            -Dlog4j2.configurationFile=file:/var/lib/neo4j/conf/log4j2-test.xml" >> /var/lib/neo4j/conf/neo4j.conf

