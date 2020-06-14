FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04
LABEL MAINTAINER "bassbone"

RUN apt-get update
RUN apt-get install -y python3-pip python3-dev
RUN ln -s /usr/bin/python3 /usr/bin/python
RUN ln -s /usr/bin/pip3 /usr/bin/pip
RUN apt-get install -y libsm6 libxrender1 libxext6 sudo less git p7zip-full zip unzip

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
