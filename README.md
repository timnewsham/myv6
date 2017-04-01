This directory contains the files needed to build a clean UNIX v6
installation from tape.  It requires that you have "expect" and
simh's "pdp11" and "wget" installed in your path.  (Ubuntu: 
`apt-get install simh expect wget`).  To build a new system run:

```sh
   $ ./setup
```

Once you have built your clean system, run it with simh's pdp11 emulator:

```sh
   $ pdp11 run.conf
   @unix
   login: root
   # ls -l
   # sync
   ^E
   quit
```

You can log in as "user" or "root".  Eight configured serial lines 
can be reached with `telnet localhost 5555`.  To gracefully shut down,
log in as root, sync thrice, and use ^E and `quit`.

To see how the system was configured, read the "runsetup" and
"runsetup2" scripts.  

The tape image is originally from
http://doc.cat-v.org/unix/v6/operating-systems-lecture-notes/v6/

The setup scripts are based on instructions from
http://minnie.tuhs.org/PUPS/Setup/v6_setup.html

