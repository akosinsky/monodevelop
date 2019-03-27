FROM akosinsky/mono-build

COPY mono-official-stable.list /etc/apt/sources.list.d/
COPY mono.gpg.asc /etc/apt/trusted.gpg.d

RUN apt-get update ; \
apt-get install -y monodevelop mono-dbg mono-xsp4 ; \
ln -s /usr/lib/mono/msbuild /usr/local/lib/mono/msbuild ; \
rm /mono-4.6.2.7.tar.bz2 ; \
cd /mono-4.6.2 ; \
make clean ; \
cd xsp-4.6/ ; \
make clean
