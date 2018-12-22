FROM tensorflow/tensorflow:1.11.0
WORKDIR /root

#install git
RUN apt-get update
RUN yes y | apt-get install git

#install object_detection
RUN pip install --user Cython
RUN pip install --user contextlib2
RUN pip install --user pillow
RUN pip install --user lxml
RUN pip install --user jupyter
RUN pip install --user matplotlib
RUN mkdir /root/tensorflow
RUN cd /root/tensorflow/ && git clone https://github.com/tensorflow/models.git
RUN git clone https://github.com/cocodataset/cocoapi.git
RUN cd cocoapi/PythonAPI && make
RUN cd cocoapi/PythonAPI && cp -r pycocotools ~/tensorflow/models/research/
RUN apt-get install wget
RUN cd /root/tensorflow/models/research/ && wget -O protobuf.zip https://github.com/google/protobuf/releases/download/v3.0.0/protoc-3.0.0-linux-x86_64.zip && unzip protobuf.zip
RUN cd /root/tensorflow/models/research/ && ./bin/protoc object_detection/protos/*.proto --python_out=.
