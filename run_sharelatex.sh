#!/bin/bash
export PATH=/usr/local/texlive/2014/bin/i386-linux:$PATH
mongod &
sleep 5s
redis-server &
sleep 5s
cd /sharelatex
grunt run
