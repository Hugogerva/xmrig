#!/bin/sh

args=$@
echo "start xmrig with arg : ${args}" 
mkdir -p iexec
xmrig ${args}
echo "mined" >> iexec/consensus.iexec
cat /iexec/consensus.iexec
