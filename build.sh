curl https://ftp.postgresql.org/pub/source/v16.0/postgresql-16.0.tar.gz | tar xzf -
cd postgresql-16.0/
./configure --without-readline --without-zlib LDFLAGS='--static'
make -C src/bin/psql/ -ik
cp src/bin/psql/psql ../psql-static
