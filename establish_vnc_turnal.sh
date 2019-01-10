#!/usr/bin/expect
set user USERNAMEHERE
set prefix ug
set address .eecg.toronto.edu
set passwd PWHERE
set timeout 3

send_user "enter the id to ug computer as shown: "
flush stdout
gets stdin num

send_user "enter the vnc port to the computer as shown: "
flush stdout
gets stdin port

spawn ssh -L 5901:127.0.0.1:$port $user@$prefix$num$address 

expect {
    "(yes/no)?" {
        send "yes\n"
        expect "password:"
        send "$passwd\n"
    }
        "password:" {
        send "$passwd\n"
    }
}
expect "#"
send "cd ece297/\n"
interact
