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
   git clone -b pool https://github.com/nima789/DY.git &POOL
   
   wget -P &POOL https://www.huahuayu.ml/pool/proxypool

   wget -P &POOL/assets https://www.huahuayu.ml/pool/GeoLite2-City.mmdb

   chmod 700 &POOL/pool
 
   chmod 700 &POOL/pool/proxypool
}
function Tip() {
   echo -e '请打开pool文件夹复制下面代码运行'
   echo -e 'nohup ./proxypool -c config.yaml'
}
Installation
