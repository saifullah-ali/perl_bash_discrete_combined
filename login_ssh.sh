#!/usr/bin/expect

puts "\nStarting Script\n"
set paswd "admin"

puts "\ngoing to use password : $paswd\n";
puts "\ngoing to ssh now\n";
spawn ssh admin@172.30.146.46
expect "assword:"
send "$paswd\r"
expect "#"

puts "\nLoging check with true password finished \n"


for {set i 1} {$i < 1000} {incr i 1} {
puts "\nloop $i started... \n"
set paswd "admin"
append paswd "$i"

puts "\ngoing to use password : $paswd\n";
puts "\ngoing to ssh now\n";
spawn ssh admin@172.30.146.46
expect "assword:"
send "$paswd\r"
expect "Permission denied"

puts "\n loop $i finished \n"
}


