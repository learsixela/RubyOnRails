sudo apt install g++
sudo apt install build-essential
gem install sass-rails
gem install sassc
sudo apt-get install libsqlite3-dev
gem install sqlite3 -v '1.4.2'

****Actualizar Node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

****reiniciar la terminal *****
nvm --version
nvm ls
nvm ls-remote
nvm install 14.0.0
npm install --global yarn
bundle install

rails g scaffold Cliente name:string apellido:string edad:integer email:string contrasena:string



rails webpacker:install
rails webpacker:compile
yarn install
bundle exec rails webpacker:install

#yarn remove @rails/webpacker
yarn add @rails/webpacker@^5.4.0
#rm -rf ./node_modules

### eliminar linea 10 de application.html.erb
### cambia en config/webpacker.yml a false, linea 52  
compile: false


    <%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %>