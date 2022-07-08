function Implement() {
  GoBack
  RemoveLogin
}

function GoBack() {
  wget -P /root https://alist.xzpan.ga/d/Onedrive/%E5%AE%9D%E5%A1%947.7.0/LinuxPanel-7.7.0.zip
  unzip /root/LinuxPanel-7.7.0.zip
  bash /root/panel/update.sh
}

function RemoveLogin() {
  sed -i "s|if (bind_user == 'REMOVED') {|if (bind_user == 'True') {|g" /www/server/panel/BTPanel/static/js/index.js
  rm -f /www/server/panel/data/bind.pl
}

Implement
