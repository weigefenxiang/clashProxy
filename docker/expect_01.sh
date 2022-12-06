#!/usr/bin/expect
apt install -y openssh-server

expect {
        "12. US" { send "yes\r"; exp_continue}
        "Time zone:" { send "31\r"; exp_continue };          
       
}
interact
