This directory contains the files needed to build a clean unix v6
installation from tape.  It requires that you have "expect" and
simh's "pdp11" and "wget" installed in your path.  
(Ubuntu: apt-get install simh expect wget).  To build a new system run:

   $ ./setup

Once you have built your clean system, run it with simh's pdp11 emulator:

   $ pdp11 run.conf
   @unix
   login: root
   # ls -l
   # sync
   ^E
   quit

telnet to localhost 5555 to connect to the "serial" lines.

To see how the system was configured, read the "runsetup" and
"runsetup2" scripts.  

The tape image is fetched from 
http://doc.cat-v.org/unix/v6/operating-systems-lecture-notes/v6/

The setup scripts are based on instructions from
http://minnie.tuhs.org/PUPS/Setup/v6_setup.html

