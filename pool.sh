POOL=/data/data/com.termux/files/home/pool

function Installation() {
   Update
   ProjectDeployment
   Tip
}
function Update() {
   pkg update -y

   pkg install -y git curl wget
}
function ProjectDeployment() {
   git clone -b pool https://github.gitwj.workers.dev/nima789/DY.git $POOL
   
   wget -P $POOL https://www.huahuayu.ml/pool/proxypool

   wget -P $POOL/assets https://www.huahuayu.ml/pool/GeoLite2-City.mmdb

   chmod 700 $POOL
 
   chmod 700 $POOL/proxypool
}
function Tip() {
   echo -e '请复制下面代码打开pool文件夹运行'
   echo -e 'cd pool'
   echo -e 'nohup ./proxypool -c config.yaml'
   echo -e '本地访问：127.0.0.1:12580'
   echo -e '区域网访问：wifi IP 地址:12580'
}
Installation
