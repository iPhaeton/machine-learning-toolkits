FROM tensorflow/tensorflow:1.4.0
WORKDIR /root

RUN apt-get update && yes y | apt-get install libsm6 libxrender1 libfontconfig1 libxext6 libgl1-mesa-glx
RUN yes y | apt-get install python-tk
RUN pip install sacred
RUN pip install opencv-python
RUN pip install pillow