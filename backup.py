#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import sys
import os

VOLUMES = os.getenv('VOLUMES')
REPOSITORY = os.getenv('REPOSITORY')

if __name__ == '__main__':
	print(VOLUMES)
	print(REPOSITORY)
