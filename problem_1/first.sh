#!/bin/sh

chmod 700 second.sh
chmod 700 final.sh

scp -i shellscripting1.pem final_1.sh ec2-user@ec2-18-221-144-26.us-east-2.compute.amazonaws.com:
scp -i shellscripting1.pem second.sh ec2-user@ec2-18-221-144-26.us-east-2.compute.amazonaws.com:
scp -i shellscripting1.pem final.sh ec2-user@ec2-18-221-144-26.us-east-2.compute.amazonaws.com:

ssh -i shellscripting1.pem ec2-user@ec2-18-221-144-26.us-east-2.compute.amazonaws.com ./second.sh

