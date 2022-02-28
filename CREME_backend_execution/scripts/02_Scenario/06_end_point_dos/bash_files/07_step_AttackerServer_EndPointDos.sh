#!/usr/bin/expect -f
set delKnownHosts [lindex $argv 0]
set ip [lindex $argv 1]
set username [lindex $argv 2]
set password [lindex $argv 3]
set path [lindex $argv 4]
set target_server_ip [lindex $argv 5]
set new_user_account [lindex $argv 6]
set new_user_password [lindex $argv 7]

set timeout 1200

# SSH connection
spawn /bin/bash $delKnownHosts
send "exit\r"
spawn ssh $username@$ip
expect "*continue connecting (yes/no*)? "
send "yes\r"
expect " password: "
send "$password\r"


expect "*:~# "
send "python3 $path/07_step_EndPontDos.py $path $ip $target_server_ip $new_user_account $new_user_password\r"

expect "*:~# "
send "exit\r"