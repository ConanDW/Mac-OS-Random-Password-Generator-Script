#!/bin/bash
if [ -d $getUserInput ]
then
    echo "- ERROR : getUserInput variable not furnished."
fi 
echo "Generating Password"
for ((n = 0; n < 1; n++))
do dd if=/dev/urandom count= 1 2> /dev/null | uuencode -m - | sed -ne 2p |
pwdOut=cut -c-12
echo "$pwdOut"
done 