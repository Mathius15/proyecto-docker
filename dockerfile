FROM wordpress:latest

# Actualizamos el sistema e instalamos el editor nano y herramientas de red
RUN apt-get update && apt-get install -y nano iputils-ping

# Usamos COPY para que Docker tome el archivo local y lo introduzca al contenedor
COPY uploads.ini /usr/local/etc/php/conf.d/uploads.ini
