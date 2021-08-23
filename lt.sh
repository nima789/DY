LT=/data/data/com.termux/files/home/lt

function Installation() {
   Update
   ProjectDeployment
}

function Update() {
  pkg upgrade -y
  
  pkg install -y wget curl net-tools git perl moreutils cronie openssh
  
  curl -sL https://deb.nodesource.com/setup_14.x | bash -
  DownloadTip
  
  pkg install -y nodejs
}

function ProjectDeployment() {

  git clone https://github.qiqmail.ml/simo8102/88-AutoSignMachine.git $LT
  
  rm -r $LT/package-lock.json
  
  cd $LT
  
  npm install
}

Installation
