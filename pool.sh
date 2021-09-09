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
   echo -e '请打开pool文件夹复制下面代码运行'
   echo -e 'nohup ./proxypool -c config.yaml'
}
Installation
