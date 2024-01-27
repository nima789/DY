function Install() {
  echo -e "Cloudflare Gcore 代理ip脚本"
  echo -e "1. 安装CloudflareST"
  echo -e "2. Warp优选"
  echo -e "0. 退出"
  read -p "请输入数字：" num
  case "$num" in
  1)CloudflareST;;
  2)Warp;;
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

function Warp() {
  rm -rf $HOME/warp
  wget -P $HOME/warp https://gitlab.com/Misaka-blog/warp-script/-/raw/main/files/warp-yxip/warp-yxip.sh
  echo -e "warp优选脚本下载完成"
}

Install
