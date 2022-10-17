#!/bin/sh

dwm_ip(){
local_interface=$(route | awk '/^default/{print $NF}')
local_ip=$(ip addr show "$local_interface" | grep -w "inet" | awk '{ print $2; }' | sed 's/\/.*$//')


if [[ $(route | grep "tun0") ]]
then
  vpn_interface="tun0"
  vpn_ip=$(ip addr show "$vpn_interface" | grep -w "inet" | awk '{ print $2; }' | sed 's/\/.*$//')

  echo " $local_ip | $vpn_ip $SEP1"
else
  echo " $local_ip $SEP1"
fi
}
