rm -rf $HOME/cf
mkdir $HOME/cf
git clone https://xzgh.run.goorm.io/https://github.com/ip-scanner/cloudflare.git $HOME/cf/cfip
cd $HOME/cf/cfip && cat *.txt >> all.txt
wget -P /data/data/com.termux/files/home/cf https://xzgh.run.goorm.io/https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/shell/cf.sh
cd $HOME/cf && wget https://xzgh.run.goorm.io/https://github.com/XIU2/CloudflareSpeedTest/releases/download/v2.0.3/CloudflareST_linux_arm64.tar.gz
tar -zxvf CloudflareST_linux_arm64.tar.gz
chmod +x ./CloudflareST
mv -f $HOME/cf/cfip/all.txt $HOME/cf/ip.txt
