#!/usr/bin/expect
apt install -y openssh-server

expect {
        "yes/no" { send "yes\r"; exp_continue}
        "Time zone:" { send "31\r"; exp_continue };          
       
}
interact
