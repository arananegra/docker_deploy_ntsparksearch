#!/bin/bash

sbin/start-master.sh #--memory 3g --cores 8
python3.4 /usr/spark-2.2.0/ntsparksearch_backend/ntsparksearch/RestApi/ServiceRunner.py