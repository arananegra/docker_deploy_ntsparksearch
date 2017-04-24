FROM gettyimages/spark

RUN apt-get update && apt-get install -y \
    build-essential \
    python3.4-dev \
    git

RUN pip3.4 install NumPy && pip3.4 install biopython && pip3.4 install progressbar2 && pip3.4 install findspark && pip3.4 install pymongo && pip3.4 install xlrd

RUN cd /usr/spark-2.1.0 && git clone -b SetupCreation https://arananegrayeye@bitbucket.org/arananegrayeye/ntsparksearch.git

# COPY ./files_to_container/. /usr/spark-2.1.0/

RUN cd /usr/spark-2.1.0/ntsparksearch && python3.4 setup.py install

# execute image: docker run -it --name test01 -v $PWD/vol:/home docker-spark-bio /bin/bash
