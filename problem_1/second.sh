#!/bin/sh


mkdir nawaz
mv second.sh /home/ec2-user/nawaz
mv final.sh /home/ec2-user/nawaz
mv final_1.sh /home/ec2-user/nawaz
cd nawaz


abc=$(aws --output text --query "Reservations[*].Instances[*].PrivateIpAddress" ec2 describe-instances --instance-ids `aws --output text --query "AutoScalingGroups[0].Instances[*].InstanceId" autoscaling describe-auto-scaling-groups --auto-scaling-group-names "shellscripting"`)


scp /home/ec2-user/nawaz/final.sh ec2-user@$abc:
scp /home/ec2-user/nawaz/final_1.sh ec2-user@$abc:


ssh -t -t ec2-user@$abc ./final.sh

