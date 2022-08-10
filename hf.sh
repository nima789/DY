function Recovery() {
  echo -e "termux脚本"
  echo -e "1. Hexo 安装"
  echo -e "2. ngrok 安装"
  echo -e "3. proxypool 安装"
  echo -e "4. cloudflare pages TVBox文件"
  echo -e "0. 退出"
  read -p "请输入数字：" num
  case "$num" in
  1)Hexo;;
  2)Ngrok;;
  3)Pool;;
  4)Cf_TVbox;;
  *)exit;
  esac
}

function Hexo() {
  pkg install -y nodejs git
  npm config set registry https://registry.npm.taobao.org
  npm install -g hexo-cli
  read -p "请输Hexo目录名：" folder
  mkdir $home/$folder
  cd $home/$folder
  hexo init
  npm install
  git clone -b master https://git.hubproxy.cf/https://github.com/jerryc127/hexo-theme-butterfly.git themes/butterfly
  npm install hexo-renderer-pug hexo-renderer-stylus --save
  echo -e "Hexo 安装完成"
}

function Ngrok() {
  rm $PREFIX/bin/ngrok
  wget -O ngrok https://xzpan.xiezhang.ml/%E6%96%87%E4%BB%B6/ngrok-2.2.8-arm64
  chmod 777 ngrok
  mv ngrok $PREFIX/bin/
  git clone git@nimabi66.github.com:nimabi66/nct.git
  ngrok -v
  echo -e '添加authtoken格式'
  echo -e 'ngrok authtoken xxxxxxx'
}

function Pool() {
  rm pool.sh
  wget https://git.hubproxy.cf/https://raw.githubusercontent.com/nima789/DY/main/pool.sh && bash pool.sh
}

function Cf_TVbox() {
  git clone git@nimabi66.github.com:nimabi66/CloudflarePageDY.git $home/tvboxfdy
  git clone -b main git@nimabi66.github.com:nimabi66/freed.git $home/tvbox
}

Recovery
