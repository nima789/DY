function Install() {
  echo -e "Cloudflare Gcore 代理ip脚本"
  echo -e "1. 安装CloudflareST"
  echo -e "2. ip-daily分支"
  echo -e "3. ip-master分支"
  echo -e "4. Gcore ip"
  echo -e "0. 退出"
  read -p "请输入数字：" num
  case "$num" in
  1)CloudflareST;;
  2)Daily;;
  3)Master;;
  3)GcoreIp;;
  *)exit;
  esac
}

function CloudflareST() {
  rm -rf $HOME/cf
  mkdir $HOME/cf
  wget -P $HOME/cf https://gh.hubproxy.cf/https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/shell/cf.sh
  wget -P $HOME/cf https://gh.hubproxy.cf/https://github.com/XIU2/CloudflareSpeedTest/releases/latest/download/CloudflareST_linux_arm64.tar.gz
  cd $HOME/cf && tar -zxvf CloudflareST_linux_arm64.tar.gz
  chmod +x ./CloudflareST
  echo -e "CloudflareST 安装完成"
  Install
}

function Daily() {
  rm -rf $HOME/cf/cfip
  git clone -b daily https://gh.hubproxy.cf/https://github.com/ip-scanner/cloudflare.git $HOME/cf/cfip
  cd $HOME/cf/cfip && cat *.txt >> all.txt
  cp $HOME/cf/cfip/all.txt $HOME/cf/ip.txt
  echo -e "ip-daily分支 安装完成"
  echo -e "cd cf && ./CloudflareST 运行"
}

function Master() {
  rm -rf $HOME/cf/cfip
  git clone -b master https://gh.hubproxy.cf/https://github.com/ip-scanner/cloudflare.git $HOME/cf/cfip
  cd $HOME/cf/cfip && cat *.txt >> all.txt
  cp $HOME/cf/cfip/all.txt $HOME/cf/ip.txt
  echo -e "ip-master分支 安装完成"
  echo -e "cd cf && ./CloudflareST 运行"
}

function CroreIp() {
  wget -P $HOME/cf https://gh.hubproxy.cf/https://raw.githubusercontent.com/nima789/DY/file/ip-gc.txt
  cp $HOME/cf/ip-gc.txt $HOME/cf/ip.txt
  echo -e "Croreip 下载完成"
  echo -e "cd cf && ./CloudflareST -dd 运行"
}

Install
