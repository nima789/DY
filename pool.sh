POOL=/data/data/com.termux/files/home/pool

function Installation() {
   Update
   ProjectDeployment
   ls $POOL | grep proxypool -wq
   if [ $? -eq 0 ]; then
       Tip
    else
       Again
    fi
}
function Update() {
   pkg update -y
   pkg install -y git curl wget
}
function ProjectDeployment() {
   rm -rf $POOL
   git clone -b pool https://git.hubproxy.cf/https://github.com/nima789/DY.git $POOL 
   wget -P $POOL https://www.6666mail.ml/pool/proxypool
   wget -P $POOL/assets https://www.6666mail.ml/pool/GeoLite2-City.mmdb
   chmod 700 $POOL
   chmod 700 $POOL/proxypool
} 
function Tip() {
   echo -e '请复制下面代码打开pool文件夹运行'
   echo -e 'cd pool'
   echo -e 'nohup ./proxypool -c config.yaml'
   echo -e '本地访问：127.0.0.1:12580'
   echo -e '区域网访问：手机IP地址如(192.168.1.101):12580'
}
function Again() {
   rm -rf $POOL
   echo -e '网络原因文件下载失败请重新运行此脚本'
}
Installation
