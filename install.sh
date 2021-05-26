#!/bin/env bash

## 活动脚本库私钥

    ##下载私钥
    wget -P /root/.ssh https://raw.gitwj.workers.dev/nima789/JD-FreeFuck/part2/.ssh/config
    wget -P /root/.ssh https://raw.gitwj.workers.dev/nima789/JD-FreeFuck/part2/.ssh/jd_base
    wget -P /root/.ssh https://raw.gitwj.workers.dev/nima789/JD-FreeFuck/part2/.ssh/jd_scripts
    wget -P /root/.ssh https://raw.gitwj.workers.dev/nima789/JD-FreeFuck/part2/.ssh/known_hosts
    ## 安装私钥
    chmod 700 /root/.ssh
    chmod 600 /root/.ssh/config
    chmod 600 /root/.ssh/jd_base
    chmod 600 /root/.ssh/jd_scripts
    chmod 600 /root/.ssh/known_hosts
    
    
    git clone -b master git@jd_base_gitee:supermanito/jd_base.git /jd
