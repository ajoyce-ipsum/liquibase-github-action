FROM liquibase/liquibase:latest

COPY entry.sh /entry.sh
ADD https://s3.amazonaws.com/redshift-downloads/drivers/jdbc/2.1.0.9/redshift-jdbc42-2.1.0.9.jar /lib/redshift-jdbc42-2.1.0.9.jar
ADD https://github.com/liquibase/liquibase-redshift/releases/download/v4.17.0/liquibase-redshift-4.17.0.jar /lib/liquibase-redshift-4.17.0.jar

ENTRYPOINT ["/entry.sh"]
