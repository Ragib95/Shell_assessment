#!/bin/sh

mkdir nawaz
mv final.sh /home/ec2-user/nawaz
mv final_1.sh /home/ec2-user/nawaz
cd nawaz

sudo yum update
sudo yum install git

git init
git add final_1.sh
git commit -m "first commit of the assignment"
git remote add origin https://github.com/Ragib95/shellproblem1.git
git push -u origin master

echo "git job done"

