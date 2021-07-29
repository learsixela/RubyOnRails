#En la terminal crear un archivo de memoria virtual
sudo dd if=/dev/zero of=/swap bs=1M count=1024
sudo mkswap /swap
sudo chmod 0600 /swap
sudo swapon /swap

#ejecutamos
rvmsudo passenger-install-nginx-module

#Presionamos enter
#presionamos shift+1 (!) y seleccionamos
    #(*)ruby  
    #(*) Node.Js
#Presionamos enter
#Ingresamos el 1 y enter
#Agregregamos la ruta /etc/nginx y enter
#Esperamos unos minutos...
#¡Felicitaciones hemos instalado Nginx!

#seguir con Instalacion_04_Node_Git.sh



