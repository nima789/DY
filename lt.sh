LT=/data/data/com.termux/files/home/lt

function Installation() {
   Update
   ProjectDeployment
}

function Update() {
  pkg upgrade -y
  
  pkg install -y wget curl net-tools git perl moreutils cronie openssh
  
  pkg install -y nodejs
}

function ProjectDeployment() {

  git clone -b lt https://github.gitwj.workers.dev/nima789/DY.git $LT
  
  rm -r $LT/package-lock.json
  
  cd $LT
  
  npm install
}

Installation
