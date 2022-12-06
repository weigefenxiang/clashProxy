#!/usr/bin/expect
apt install -y openssh-server

expect {
        "12. US" { send "yes\r"; exp_continue}
        "Time zone:" { send "31\r"; exp_continue };          
       
}
interact
# sed -i s@/archive.ubuntu.com/@/mirrors.tuna.tsinghua.edu.cn/@g /etc/apt/sources.list && sed -i s@/security.ubuntu.com/@/mirrors.tuna.tsinghua.edu.cn/@g /etc/apt/sources.list && apt update && apt install -y vim wget
    apt install -y openssh-server expect

