rm -rf /data/data/com.termux/files/home/cf
mkdir cf
cd cf && wget https://git.hubproxy.cf/https://github.com/XIU2/CloudflareSpeedTest/releases/download/v2.0.3/CloudflareST_linux_arm64.tar.gz
tar -zxvf CloudflareST_linux_arm64.tar.gz
chmod +x ./CloudflareST
