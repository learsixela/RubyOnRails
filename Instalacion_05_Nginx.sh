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
#control+c para salir
#ir a la carpeta
cd /etc/nginx
#creamos las carpetas
sudo mkdir sites-available
sudo mkdir sites-enabled
#accedemos a la ruta
cd conf
#editamos el archivo
sudo nano nginx.conf

#agregar al archivo, antes de: 
## another virtual host using mix of IP-, name-, and port-based configuration
include /etc/nginx/sites-enabled/*;
## control+o y enter para guardar y ctrl+x para salir

#ir a la ruta
cd /etc/nginx/sites-available
#crear el archivo
sudo touch rails.conf
#editar archivo
sudo nano rails.conf

#pegar el contenido con SU IP PUBLICA DE AWS <public_ip_address>

server {
        listen 80; 
        server_name 3.19.143.178;
        passenger_enabled on; 
        passenger_app_env development; 
        root /var/www/sistemabase/public;
        }

#crear enlace simbolico
sudo ln -s /etc/nginx/sites-available/rails.conf /etc/nginx/sites-enabled/rails.conf

#reiniciamos nginx
sudo systemctl restart nginx
#validamos el estado
sudo systemctl status nginx
#control+c y enter para salir
