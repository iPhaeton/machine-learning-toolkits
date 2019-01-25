FROM tensorflow/tensorflow:1.11.0
WORKDIR /root

#install tools
RUN pip install Keras==2.2.4
RUN pip install opencv-contrib-python
RUN pip install tqdm
RUN pip install future
RUN pip install ipy_table

#install git
RUN apt-get update
RUN yes y | apt-get install git
