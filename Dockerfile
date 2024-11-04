# Usa la imagen oficial de PostgreSQL
FROM postgres:latest

# Establece las variables de entorno necesarias para PostgreSQL
ENV POSTGRES_USER=myuser
ENV POSTGRES_PASSWORD=mypassword
ENV POSTGRES_DB=mydatabase
# Expon el puerto por defecto de PostgreSQL
EXPOSE 5432


