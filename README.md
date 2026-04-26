# Proyecto Docker Mysql + WordPress
Explicacion detallada del proyecto:
1) En lugar de descargar manualmente las imagenes y iniciar los contenedores de MySQL y WordPress cree	
un archivo "docker-compose.yml" para automatizar estas tareas.
Esto me permitio gestionar ambos contenedores, definir volumenes, redes y variables de entorno en un unico archivo.

2) Creo el archivo dockerfile antes de levantar los servicios de WordPress para personalizar su imagen base.
En este, le agrego a la imagen funciones como nano, ping.
Ademas  creo un archivo de configuracion (para luego personalizar a gusto) y lo copio dentro del contenedor 
mediante dockerfile.

3) Dentro del archivo "docker-compose.yml": Indico las imagenes a utilizar, configuro variables de entorno,
defino volumenes locales para guardar datos generado, conecto WordPress con MySQL mediante la red interna
de Docker Compose.
Para no subir a github los datos de la BD, creo un .gitignore y agrego las carpetas donde se va a almacenar la BD.
La configuracion declarada en el archivo (variables de entorno, puertos, volumenes) se consulto en la documentacion
oficial de las imagenes en Docker Hub.

4)Finalmente con el comando "docker compose up -d --build" Levante los contenedores de MySQL y WordPress.
Verifique que ambos contenedores esten corriendo con "docker ps".
