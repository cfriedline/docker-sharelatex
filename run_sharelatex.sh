#!/bin/bash
export PATH=/usr/local/texlive/2014/bin/x86_64-linux:$PATH
mongod &
sleep 5s
redis-server &
sleep 5s
cd /sharelatex
grunt run
