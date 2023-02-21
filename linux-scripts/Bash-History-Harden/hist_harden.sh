#!/bin/sh

# Correct ownership of hist files and "harden" so they can't easily be deleted by user.

cd /var/adm/history/

for myHist in .[a-z]?*.hist
do
     myDotUser=${myHist%%:*}
     chattr -ua ${myHist}
     chown ${myDotUser##.} ${myHist}
     chattr +ua ${myHist}
done