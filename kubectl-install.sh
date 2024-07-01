#!/bin/bash

curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.30.0/2024-05-12/bin/linux/amd64/kubectl.sha256  >> /tmp/kuberctl.log
sha256sum -c kubectl.sha256  >> /tmp/kuberctl.log
chmod +x ./kubectl
sudo mv kubectl /usr/local/bin #to access all users
touch /tmp/kuberctl.log
kubectl version --client  >> /tmp/kuberctl.log