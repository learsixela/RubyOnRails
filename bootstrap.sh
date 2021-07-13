#!/usr/bin/env bash
# actualizar el sistema completamente
echo mejorar y actualizar el sistema
sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev
# instalar node.js para ejecutar comandos js al utilizar Rails
echo instalando node.js para ejecutar JS y Git
sudo apt-get install -y nodejs
sudo apt-get install -y git
# instalar RVM
echo instalando RVM
#gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
# Instala las llaves públicas de RVM
sudo apt-key adv –keyserver keyserver.ubuntu.com –recv-keys EBB4CCF6A72BC110
gpg --keyserver keyserver.ubuntu.com --recv EBB4CCF6A72BC110
# nuevas llaves
command curl -sSL https://rvm.io/mpapis.asc | gpg --import -
command curl -sSL https://rvm.io/pkuczynski.asc | gpg --import -
#Instala la última versión estable de RVM
\curl -sSL https://get.rvm.io | bash -s stable
# source /home/vagrant/.rvm/scripts/rvm
#actualizar tu nueva instalación RVM
source ~/.rvm/scripts/rvm
#deshabilitar autolibs
rvm autolibs disable
rvm requirements
#verifica si RVM está instalado y funcionando
rvm --version
# instalar Ruby y establecer 2.3.1 como predeterminada
echo versiones de ruby 
# rvm list known
echo instalando Ruby
rvm install 3.0.2
rvm use 3.0.2 --default
# instalar Bundler y Rails
echo instalando Bundler and Rails
gem install bundler --no-document
gem install rails -v 6.1.4 --no-document
# instalar postgres y sus dependencais
#echo instalando psql y sus dependencias
sudo apt-get install -y postgresql postgresql-contrib libpq-dev
echo version instalada
ruby -v
rails -v
echo 'all set, rock on!'