#!/bin/bash
X=`users | wc -w`
Y=`cat /etc/passwd | wc -l`
echo $X OUT OF $Y USERS ARE ONLINE RIGHT NOW
