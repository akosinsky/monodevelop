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
make clean ; \
mkdir /build ; \
cd /build ; \
wget https://github.com/mono/mono/archive/mono-5.18.1.0.tar.gz ; \
tar xfz mono-5.18.1.0.tar.gz ; \
mv mono-mono-5.18.1.0 mono-5.18.1.0 ; \
rm mono-5.18.1.0.tar.gz
