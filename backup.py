#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys
import time

VOLUMES = os.getenv('VOLUMES')
REPOSITORY = os.getenv('REPOSITORY')
INTERVAL = os.getenv('INTERVAL')

if __name__ == '__main__':
    os.system('git clone {} repository'.format(REPOSITORY))
    os.system('cd repository/ && git checkout master && git pull --prune')

    for volume in VOLUMES.split(','):
        os.system('cp -rfuv /{0} repository/{0}')

    os.system('cd repository/ && git pull --prune')
    os.system('cd repository/ && git add *')
    os.system('cd repository/ && git git commit -m "Updating backup data."')
    os.system('cd repository/ && git git push')

    time.sleep(int(INTERVAL))
