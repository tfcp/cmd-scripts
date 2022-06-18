#!/bin/bash

checkUser() {
  res=`sshpass -p pass ssh user@ip chage -l light`
  arr=(${res//:/ })
  expired=${arr[-10]}

  if [ $expired -lt 999 ]
  then
    echo "account is error"
    return 0
  else
    echo "account is normal"
    return 1
  fi
}

updateExpire() {
  res=`chage -M 99999 light`
  echo $res
  checkUser
}

checkUser

if [ $? == 0 ]
then
    updateExpire
fi

echo "userExpire check over."