FROM gettyimages/spark:2.1.0-hadoop-2.7

RUN apt-get update && apt-get install -y \
    build-essential \
    python3.4-dev

COPY ./source_code/. /usr/spark-2.1.0/
COPY ./launch_spark_and_service_2.sh /usr/spark-2.1.0/

RUN cd /usr/spark-2.1.0/ && chmod +x launch_spark_and_service_2.sh

RUN cd /usr/spark-2.1.0/ntsparksearch_backend && pip3.4 install -r requirements.txt && python3.4 setup.py install

ENV PATH /usr/spark-2.1.0/ntsparksearch_backend/ntsparksearch/RestApi:$PATH

WORKDIR /usr/spark-2.1.0
