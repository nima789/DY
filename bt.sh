function Implement() {
  GoBack
  RemoveLogin
}

function GoBack() {
  wget -O /root/LinuxPanel-7.7.0.zip https://alist.xzpan.tk/d/0nedrive1/%E5%AE%9D%E5%A1%947.7.0/LinuxPanel-7.7.0.zip
  unzip /root/LinuxPanel-7.7.0.zip
  bash /root/panel/update.sh
}

function RemoveLogin() {
  sed -i "s|if (bind_user == 'REMOVED') {|if (bind_user == 'True') {|g" /www/server/panel/BTPanel/static/js/index.js
  rm -f /www/server/panel/data/bind.pl
}

Implement
