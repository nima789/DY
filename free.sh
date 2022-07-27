function Implement() {
  Install
  Down
}

function Install() {
  apt update
  apt install -y python3 python3-pip
}

function Down() {
  mkdir /root/freenom
  wget -O /root/freenom/free.py https://raw.githubusercontent.com/Oreomeow/freenom-py/main/FNplus.py
  wget -P /root/freenom https://raw.githubusercontent.com/Oreomeow/freenom-py/main/requirements.txt
  wget -P /root/freenom https://raw.githubusercontent.com/whyour/qinglong/master/sample/notify.py
  pip3 install -r /root/freenom/requirements.txt
}

Implement
