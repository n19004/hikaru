#!/bin/bash

cd /tmp
tar -cjf home-$(date +'%Y-%m-%d').tar.bz2 --exclude ~/ex.cnf $HOME
