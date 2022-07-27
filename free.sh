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
  wget -O /root/freenom/requirements.txt https://raw.githubusercontent.com/Oreomeow/freenom-py/main/requirements.txt
  pip3 install -r /root/freenom/requirements.txt
}

Implement
