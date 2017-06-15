#!/bin/bash

bin/spark-class org.apache.spark.deploy.master.Master -h master
echo EJECUTADO SPARKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKK
python3.4 /usr/spark-2.1.0/ntsparksearch_backend/ntsparksearch/RestApi/ServiceRunner.py
echo EJECUTADO PYTHONNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN