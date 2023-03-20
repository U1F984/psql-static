curl https://raw.githubusercontent.com/oufm/packelf/master/packelf.sh > packelf.sh && chmod +x packelf.sh

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y postgresql-client-15

./packelf.sh /usr/lib/postgresql/15/bin/psql psql-static
