#!/bin/sh

HOST=$1
CERT=$2

ssh -i $CERT ubuntu@$HOST "bash -s" < ./zk-setup.sh
