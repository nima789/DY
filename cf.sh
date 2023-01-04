rm -rf $HOME/cf
mkdir $HOME/cf
git clone https://gh.hubproxy.cf/https://github.com/ip-scanner/cloudflare.git $HOME/cf/cfip
cd $HOME/cf/cfip && cat *.txt >> all.txt
wget -P /data/data/com.termux/files/home/cf https://git.hubproxy.cf/https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/shell/cf.sh
cd $HOME/cf && wget https://git.hubproxy.cf/https://github.com/XIU2/CloudflareSpeedTest/releases/download/v2.0.3/CloudflareST_linux_arm64.tar.gz
tar -zxvf CloudflareST_linux_arm64.tar.gz
chmod +x ./CloudflareST
mv -f $HOME/cf/cfip/all.txt $HOME/cf/ip.txt
