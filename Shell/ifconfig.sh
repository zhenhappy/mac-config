#!/bin/bash
ifconfig en0 | grep 'inet ' | awk '{print $2}' | sed -e "s/addr\://"
