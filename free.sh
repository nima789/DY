function Implement() {
  GoBack
  RemoveLogin
}

function Install() {
  apt install python3 python3-pip -y
  mkdir /root/freenom
  wget -O /root/freenom/free.py https://raw.githubusercontent.com/Oreomeow/freenom-py/main/FNplus.py
  wget -O /root/freenom/requirements.txt https://raw.githubusercontent.com/Oreomeow/freenom-py/main/requirements.txt
  pip3 install -r /root/freenom/requirements.txt
}

function cron() {
  echo -e '20 16 12,15,22 * * python3 /root/freenom/freenom.py -u 123xzxz@protonmail.com -p 20001201'
  echo -e '25 16 12,22 * * python3 /root/freenom/freenom.py -u xz6666@protonmail.com -p 20001201'
  echo -e '30 16 20,26 * * python3 /root/freenom/freenom.py -u linshi666@protonmail.com -p 20001201'
  echo -e '35 16 4,10,26 * * python3 /root/freenom/freenom.py -u huahuayu@mailscode.com -p 20001201'
  echo -e '40 16 18 * * python3 /root/freenom/freenom.py -u dejiyi@metalunits.com -p 20001201'
}

Implement
