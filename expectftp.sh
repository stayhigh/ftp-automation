#!/usr/bin/expect

# usage: ./expectftp.sh localhost anonymous anonymous 12345

set ip [lindex $argv 0]
set user [lindex $argv 1]
set password [lindex $argv 2]
set port [lindex $argv 3]

spawn ftp $ip $port
expect "220"
send "$user\n"
expect "Password:"
send "$password\n"

# Interact command does the control, hands over the job to the addition process,
# and produces the expected result.
interact
