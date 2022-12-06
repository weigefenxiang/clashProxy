#!/usr/bin/expect
apt install -y openssh-server

expect {
        "12. US" { send "yes\r"; exp_continue}
        "Time zone:" { send "31\r"; exp_continue };          
       
}
interact
# sed -i s@/archive.ubuntu.com/@/mirrors.tuna.tsinghua.edu.cn/@g /etc/apt/sources.list && sed -i s@/security.ubuntu.com/@/mirrors.tuna.tsinghua.edu.cn/@g /etc/apt/sources.list && apt update && apt install -y vim wget
    apt install -y openssh-server expect

# expect 安装 (需Tcl的库)

#主页: http://expect.nist.gov/

#1.下载源码包

wget http://sourceforge.net/projects/expect/files/Expect/5.45/expect5.45.tar.gz

#2.解压缩源码包

tar xzvf expect5.45.tar.gz

#3.安装配置

cd expect5.45

./configure --prefix=/usr/expect --with-tcl=/usr/tcl/lib --with-tclinclude=../tcl8.4.11/generic ##注意路径中要用到tcl中的 库

make

make install

ln -s /bin/expect /usr/expect/bin/expect  #连接到bin中
