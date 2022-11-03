#!/bin/bash

sudo yum install sendmail sendmail-cf -y
sudo systemctl start sendmail.service
sudo systemctl enable sendmail.service
sudo yum install mailx -y

df -h >> df.txt

cat df.txt | mail -s "execute command df -h" jaewon.jeong@nhnenter.com

rm df.txt
