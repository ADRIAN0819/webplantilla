# Usa Nginx como servidor web
FROM nginx:alpine

# Elimina los archivos por defecto de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia los archivos de tu web (index.html, estilos, etc.)
COPY . /usr/share/nginx/html

# Expón el puerto 80 del contenedor (luego lo redirigimos al 8081 en el host)
EXPOSE 80
