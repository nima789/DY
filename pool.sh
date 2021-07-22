POOL=/data/data/com.termux/files/home

pkg update -y

pkg install -y git curl wget

git clone -b pool https://github.com/nima789/DY.git &{POOL}/pool

wget -P &{POOL}/pool/assets https://www.huahuayu.ml/pool/GeoLite2-City.mmdb

cd &{POOL}/pool

nohup ./proxypool -c config.yaml

echo -e '请打开pool文件夹复制下面代码运行'
echo -e 'nohup ./proxypool -c config.yaml'
