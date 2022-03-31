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
   git clone -b pool https://hub.fastgit.xyz/nima789/DY.git $POOL 
   wget -P $POOL https://wp.xzpan.ga/api/v3/file/source/6/proxypool?sign=5kxf0TW2r4pvq-K7B0opSkvw1jZIj3FaJBHj5sZ8jTA%3D%3A0
   wget -P $POOL/assets https://wp.xzpan.ga/api/v3/file/source/7/GeoLite2-City.mmdb?sign=P3WXbwExqEKHglxM8zTkv1W160-phvaAgG_uCfrhYn8%3D%3A0
   chmod 700 $POOL
   chmod 700 $POOL/proxypool
} 
function Tip() {
   echo -e '请复制下面代码打开pool文件夹运行'
   echo -e 'cd pool'
   echo -e 'nohup ./proxypool -c config.yaml'
   echo -e '本地访问：127.0.0.1:12580'
   echo -e '区域网访问：手机IP地址如(192.168.1.101:12580)'
}
function Again() {
   rm -rf $POOL
   echo -e '网络原因文件下载失败请重新运行此脚本'
}
Installation
