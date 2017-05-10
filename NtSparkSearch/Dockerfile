FROM gettyimages/spark:2.1.0-hadoop-2.7

RUN apt-get update && apt-get install -y \
    build-essential \
    python3.4-dev
#    redis-server

#RUN cd /usr/spark-2.1.0 && git clone -b SetupCreation https://arananegrayeye@bitbucket.org/arananegrayeye/ntsparksearch.git

COPY ./source_code/. /usr/spark-2.1.0/

RUN cd /usr/spark-2.1.0/ntsparksearch && pip3.4 install -r requirements.txt && python3.4 setup.py install

# RUN cd /usr/spark-2.1.0/ntsparksearch/ntsparksearch/RestApi && python3.4 ServiceRunner.py &

ENV PATH /usr/spark-2.1.0/ntsparksearch/ntsparksearch/RestApi:$PATH

WORKDIR /usr/spark-2.1.0



# execute image: docker run -it --name test01 -v $PWD/vol:/home docker-spark-bio /bin/bash
