#!/bin/bash

cd /tmp
tar czf home-`date '+%Y%m%d'`.tar.gz -X ~/ex.cnf "$HOME"
