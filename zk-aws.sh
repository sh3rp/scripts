#!/bin/sh

HOST=$1
CERT=$2

ssh -oStrictHostKeyChecking=no -i $CERT ubuntu@$HOST "bash -s" < ./zk-setup.sh
