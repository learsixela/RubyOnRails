#Ingresa a 
cd /home/ubuntu
#obtener el script de inicio de Nginx, ejecuta 
sudo wget https://raw.github.com/JasonGiedymin/nginx-init-ubuntu/master/nginx -O /etc/init.d/nginx
#Ejecuta 
sudo chmod +x /etc/init.d/nginx
#ingresa a la carpeta de Nginx
cd /etc/init.d
#Ejecuta
sudo nano nginx
## control+o y enter para guardar y ctrl+x para salir
#Cambia la línea 21 a /etc/nginx/conf/nginx.conf
#Cambia la línea 22 a /etc/nginx/logs/nginx.pid
#Cambia la línea 87 a NGINXPATH=${NGINXPATH:-/etc/nginx}

# Ejecuta 
sudo /etc/init.d/nginx start
sudo fuser -k 80/tcp
sudo fuser -k 443/tcp
sudo systemctl status nginx
