#!/bin/bash

sbin/start-master.sh
python3.4 /usr/spark-2.1.0/ntsparksearch_backend/ntsparksearch/RestApi/ServiceRunner.py