#!/bin/bash
 
PROCCOUNT=`ps -Afl | wc -l`
PROCCOUNT=`expr $PROCCOUNT - 5`
#GROUPZ=`groups`
USER=`whoami`
#ADMINS=`cat /etc/group | grep --regex "^sudo" | awk -F: '{print $4}' | tr ',' '|'`
#ADMINSLIST=`grep -E $ADMINS /etc/passwd | tr ':' ' ' | tr ',' ' ' | awk {'print $5,$6,"("$1")"'} | tr '\n' ',' | sed '$s/.$//'`
#DIR=`dirname "$0"`
#UPDATESAVAIL=`cat $DIR/updates-available`
 
#if [[ $GROUPZ == "$USER sudo" ]]; then
#USERGROUP="Administrator"
#elif [[ $USER = "root" ]]; then
#USERGROUP="Root"
#elif [[ $USER = "$USER" ]]; then
#USERGROUP="Regular User"
#else
#USERGROUP="$GROUPZ"
#fi
echo -e "
\033[0;35m+++++++++++++++++: \033[0;37mSystem Data\033[0;35m :+++++++++++++++++++
\033[0;35m+       \033[0;37mHostname \033[0;35m= \033[1;32m`hostname`
\033[0;35m+   \033[0;37mIPv4 Address \033[0;35m= \033[1;32m`ip addr show enp0s3 | grep "inet\ " | awk {'print $2'}`
\033[0;35m+         \033[0;37mKernel \033[0;35m= \033[1;32m`uname -r`
\033[0;35m+         \033[0;37mDistro \033[0;35m= \033[1;32m`cat /etc/*release | grep "PRETTY_NAME" | cut -d "=" -f 2- | sed 's/"//g'`
\033[0;35m+         \033[0;37mUptime \033[0;35m= \033[1;32m`uptime | sed 's/.*up ([^,]*), .*/1/'`
\033[0;35m+           \033[0;37mTime \033[0;35m= \033[1;32m`date +%d/%m/%Y`
\033[0;35m+            \033[0;37mCPU \033[0;35m= \033[1;32m`cat /proc/cpuinfo | grep "model name" | cut -d ' ' -f3- | awk {'print $1,$2,$3,$4,$5,$6,$7,$8,$9,$10'} | head -1`
\033[0;35m+         \033[0;37mMemory \033[0;35m= \033[1;32m`free -t -m | grep "Mem" | awk {'print $4'}`MB Available, `free -t -m | grep "Mem" | awk {'print $3'}`MB Used, `free -t -m | grep "Mem" | awk {'print $2'}`MB Total
\033[0;35m+      \033[0;37mHDD Usage \033[0;35m= \033[1;32m`df -hT | grep "/dev/mapper/centos-root" | awk {'print $5'}`B Available, `df -hT | grep "/dev/mapper/centos-root" | awk {'print $4'}`B Used, `df -hT | grep "/dev/mapper/centos-root" | awk {'print $3'}`B Total 
\033[0;35m++++++++++++++++++: \033[0;37mUser Data\033[0;35m :++++++++++++++++++++
\033[0;35m+      \033[0;37m Username \033[0;35m= \033[1;32m`whoami`
\033[0;35m+      \033[0;37mUsergroup \033[0;35m= \033[1;32m`groups`
\033[0;35m+     \033[0;37mLast Login \033[0;35m= \033[1;32m`last -a $USER | head -2 | awk NR==2{'print $3,$4,$5,$6'}` from `last -a $USER | head -2 | awk 'NR==2{print $10}'`
\033[0;35m+       \033[0;37mSessions \033[0;35m= \033[1;32m`who | grep $USER | wc -l`
\033[0;35m+      \033[0;37mProcesses \033[0;35m= \033[1;32m$PROCCOUNT
\033[0;35m++++++++++++++++++++++++++++++++++++
"
