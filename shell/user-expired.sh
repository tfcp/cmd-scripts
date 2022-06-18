#!/bin/bash


arr=(
  ip1
  ip2
  )

for str in ${arr[@]};do
    res=`sshpass -p pass ssh user@$str chage -l user`
    arr=(${res//:/ })
    expired=${arr[-10]}
    echo "$str : $expired"
done
echo "check over"