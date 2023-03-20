curl https://ftp.postgresql.org/pub/source/v15.2/postgresql-15.2.tar.gz | tar xzf -
cd postgresql-15.2/
./configure --without-readline --without-zlib LDFLAGS='--static'
make -C src/bin/psql/ -ik
cp src/bin/psql/psql ../psql-static
