#!/usr/bin/expect
set user USERNAMEHERE
set prefix ug
set address .eecg.toronto.edu
set passwd PWHERE
set timeout 3

send_user "enter an id to ug computer: "
flush stdout
gets stdin num

spawn ssh $user@$prefix$num$address
send_user "Connecting to $user@$prefix$num$address" 
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
send "ece297vnc start\n"
send "#ie: ece297vnc stop ug170.eecg.toronto.edu:1\n"
send "ece297vnc stop "
interact
