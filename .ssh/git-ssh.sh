#!/bin/bash
rm -rf *.pub
rm -rf *_rsa
ssh-keygen -t rsa -C "q505507538@gmail.com" -f github_zhenhappy_rsa -P ""
ssh-keygen -t rsa -C "q505507538@gmail.com" -f gitcafe_zhenhappy_rsa -P ""
ssh-keygen -t rsa -C "q505507538@gmail.com" -f gitlab_zhenhappy_rsa -P ""
ssh-keygen -t rsa -C "505507538@qq.com" -f github_q505507538_rsa -P ""
ssh-keygen -t rsa -C "505507538@qq.com" -f gitcafe_q505507538_rsa -P ""
ssh-keygen -t rsa -C "q505507538@gmail.com" -f coding_zhenhappy_rsa -P ""
ssh-keygen -t rsa -C "505507538@qq.com" -f coding_Kristine_rsa -P ""
