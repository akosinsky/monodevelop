FROM flexberry/alt.p8-apache2-mono:4.6.2.7-1.1.2

RUN cp -d /usr/bin/mono* /usr/local/bin ; \
cp -rd /usr/include/mono-2.0 /usr/local/include ; \
cp -rd /usr/lib/mono /usr/local/lib ; \
cp -rd /usr/lib/monodoc /usr/local/lib ; \
cp -rd /usr/lib/mono-source-libs /usr/local/lib ; \
cp -d /usr/lib64/libmono* /usr/local/lib64 ; \
cp -rd /usr/share/mono-2.0 /usr/local/share ; \
bzip2 -d /var/lib/rpm/*.bz2 ; \
apt-get update ; \
apt-get install -y xterm mate-terminal monodevelop ; \
ln -s /usr/lib/mono/msbuild /usr/local/lib/mono/msbuild ; \
mkdir -p /usr/src/RPM/BUILD ; \
cd /usr/src/RPM/BUILD ; \
wget https://download.mono-project.com/sources/mono/mono-4.6.2.7.tar.bz2 ; \
tar xfj mono-4.6.2.7.tar.bz2 ; \
mv  mono-4.6.2 mono4-4.6.2.7 ; \
rm mono-4.6.2.7.tar.bz2 ; \
wget https://github.com/mono/mono/archive/mono-5.18.0.240.tar.gz ; \
tar xfz mono-5.18.0.240.tar.gz ; \
mv mono-mono-5.18.0.240 mono-5.18.0.240 ; \
rm xfz mono-5.18.0.240.tar.gz
