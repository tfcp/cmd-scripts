#!/bin/bash


arr=(
  ip1
  ip2
  )

for str in ${arr[@]};do
    res=`sshpass -p userpass ssh user@$str chage -M 99999 user`
done