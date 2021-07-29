#****Instalar NVM en Ubuntu 20.04 ********
sudo apt install curl 
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
source ~/.profile 

#****reiniciar la terminal *****
nvm --version
nvm ls
nvm ls-remote
nvm install 14.0.0 
# o nvm install node 
npm install --global yarn

yarn install
yarn add @rails/webpacker@^5.4.0

# instalar gema passenger
gem install passenger

# para finalizar verificar versiones 
ruby -v
rails -v