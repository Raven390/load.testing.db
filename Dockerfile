FROM liquibase/liquibase:4.18

ENV URL=""
ENV USERNAME=""
ENV PASSWORD=""
ENV COMMAND="update"
ENV SCHEMA="public"
ENV LOG_LEVEL="info"
WORKDIR /changelog

COPY liquibase /liquibase/changelog

CMD ["sh", "-c", "docker-entrypoint.sh --url=${URL} --liquibase-schema-name=${SCHEMA} --log-level=${LOG_LEVEL} --username=${USERNAME} --password=${PASSWORD} --classpath=/liquibase/changelog --changeLogFile=changelog.json ${COMMAND}"]
