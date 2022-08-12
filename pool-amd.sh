function Installation() {
   ProjectDeployment
   ls $POOL | grep proxypool -wq
   if [ $? -eq 0 ]; then
       Tip
    else
       Again
    fi
}

function ProjectDeployment() {
   rm -rf $HOME/pool
   git clone -b pool https://git.hubproxy.cf/https://github.com/nima789/DY.git $HOME/pool
   wget -O $HOME/pool/proxypool https://xzpan.xiezhang.ml/%E6%96%87%E4%BB%B6/proxypool-amd64
   wget -O $HOME/pool/assets/GeoLite2-City.mmdb https://xzpan.xiezhang.ml/%E6%96%87%E4%BB%B6/GeoLite2-City.mmdb
   chmod 700 $HOME/pool/proxypool
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
