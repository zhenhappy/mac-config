#!/bin/bash 
clear
read -p "请输入手机IP:"
adb connect $REPLY
pause