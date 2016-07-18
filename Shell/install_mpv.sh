#!/bin/bash

EXTS=( 3GP ASF AVI FLV M4V MKV MOV MP4 MPEG MPG MPG2 MPG4 RMVB WMV )

for ext in ${EXTS[@]}
do
    lower=$(echo $ext | awk '{print tolower($0)}')
    duti -s io.mpv $ext all
    duti -s io.mpv $lower all
done
