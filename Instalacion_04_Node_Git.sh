#En tu Terminal
cd /var
#crear directorio www
sudo mkdir www
#ingresamos al directorio
cd www
#Clonamos el repositorio
sudo git clone https://github.com/learsixela/sistemabase.git
#la ruta final sera /var/www donde se clonara cualquier proyecto

#Cambiar el propietario del proyecto 
sudo chown -R ubuntu sistemabase/
#Ingresar al directorio
cd sistemabase
#Instalar dependencias
bundle install
#crear archivo log
sudo touch log/development.log
#Cambiar permisos de archivo log
sudo chmod 0666 log/development.log

#Crear basedatos sqlite3
rails db:drop
rails db:migrate
#validar tarblas creadas
rails db:migrate:status

##continua con la Instalacion_05_Nginx.sh



