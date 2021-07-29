#!/usr/bin/env bash
# actualizar el sistema completamente
sudo apt-get update
sudo apt-get -y upgrade
sudo apt install g++ -y
sudo apt install build-essential -y
sudo apt-get install git-core curl zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt1-dev libcurl4-openssl-dev  libffi-dev -y
sudo apt-get install libsqlite3-dev 

# instalar node.js para ejecutar comandos js al utilizar Rails
sudo apt-get install -y nodejs
sudo apt-get install -y git

# Instala las llaves públicas de RVM
sudo apt-key adv –keyserver keyserver.ubuntu.com –recv-keys EBB4CCF6A72BC110
gpg --keyserver keyserver.ubuntu.com --recv EBB4CCF6A72BC110
# nuevas llaves
command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
command curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -
#Instala la última versión estable de RVM
\curl -sSL https://get.rvm.io | bash -s stable
#actualizar tu nueva instalación RVM
source ~/.rvm/scripts/rvm
#deshabilitar autolibs
rvm autolibs disable
rvm requirements

# instalar Ruby y establecer 3.0.0 como predeterminada
rvm install 3.0.0
rvm use 3.0.0 --default

# instalar Bundler y Rails
gem install bundler --no-document
gem install rails -v 6.1.4 --no-document

# Instalar Gemas 
gem install sqlite3 -v '1.4.2'
gem install sass-rails
gem install sassc
gem install passenger
#si falla passenger continuar con archivo instalacion_02_AWS_adicionales.sh

#verificar versiones 
ruby -v
rails -v

#continuar con Instalacion_03_Passenger.sh
