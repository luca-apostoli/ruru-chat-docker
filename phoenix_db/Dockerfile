FROM postgres:9.4

#RUN mkdir /docker-entrypoint-initdb.d

COPY ./init-user-db.sh /docker-entrypoint-initdb.d/

EXPOSE 5432

