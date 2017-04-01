proc sendline { x } {
    send $x
    send "\r"
}

proc simh { cmd } {
    expect "sim>"
    sendline $cmd
}

proc unix { cmd } {
    expect "# "
    sendline $cmd
}

proc respond { w r } {
    expect $w
    send $r
}

set break "\x05"
