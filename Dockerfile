# Usa la imagen oficial de PostgreSQL como base
FROM postgres

# Copia el script SQL al contenedor


COPY script.sql /docker-entrypoint-initdb.d/
RUN chmod -R 777 /docker-entrypoint-initdb.d/script.sql

# Define variables de entorno para la configuración de PostgreSQL
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD mypassword
ENV POSTGRES_DB postgres

# Expone el puerto 5432 para acceder a PostgreSQL
EXPOSE 5432

