# 🐳 Proyecto: WordPress + MySQL con Docker

En lugar de descargar manualmente las imágenes e iniciar los contenedores de MySQL y WordPress, creé un archivo `docker-compose.yml` para automatizar estas tareas. Esto me permitió gestionar ambos contenedores, definir volúmenes, redes y variables de entorno en un único archivo.

## 🏗️ Arquitectura y configuración

* **Dockerfile (Personalización de Imagen Base):** Creé el archivo Dockerfile antes de levantar los servicios de WordPress para personalizar su imagen base.
 En este, le agregué a la imagen funciones como `nano` y `ping`. Además, creé un archivo de configuración (para luego personalizar a gusto) y lo copié
 dentro del contenedor mediante el Dockerfile.
* **Docker Compose:** Dentro del archivo `docker-compose.yml`: indiqué las imágenes a utilizar, configuré variables de entorno, definí volúmenes locales para guardar los datos 
 generados, y conecté WordPress con MySQL mediante la red interna de Docker Compose.
* **Gestión de Datos (.gitignore):** Para no subir a GitHub los datos de la BD, creé un archivo `.gitignore` y agregué las carpetas locales donde se va a almacenar la base de datos pesada.
* **Documentación Oficial:** La configuración declarada en el archivo (variables de entorno, puertos, volúmenes) se consultó rigurosamente en la documentación oficial
 de las imágenes en Docker Hub.

## 🚀 Instrucciones para probar el proyecto
* 1) Clonar el repositorio en la maquina local y entrar a la carpeta del proyecto:
git clone https://github.com/Mathius15/proyecto-docker
`cd proyecto-docker-wp`

* 2) (OPCIONAL) Personalizar el archivo uploads.ini para modificar el limite de subida de 300 MB:
`nano uploads.ini`

* 3) Ahora solo falta construir la imagen.
`docker compose up -d –build`

Para verificar el éxito se puede navegar hacia la pagina con la IP de tu servidor web y el puerto 8080.
