rm $PREFIX/bin/ngrok
wget -O ngrok https://xzpan.xiezhang.ml/%E6%96%87%E4%BB%B6/ngrok-2.2.8-arm64
chmod 777 ngrok
mv ngrok $PREFIX/bin/
ngrok -v
echo -e '添加authtoken格式'
echo -e 'ngrok authtoken xxxxxxx'
