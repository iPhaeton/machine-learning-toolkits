FROM jupyter/tensorflow-notebook:83ed2c63671f

RUN python -m pip install --upgrade pip

#install packages
RUN pip install PyQt5
RUN pip install Keras==2.2.4
RUN pip install opencv-contrib-python
RUN pip install tqdm
RUN pip install future
RUN pip install ipy_table
RUN pip install https://github.com/OlafenwaMoses/ImageAI/releases/download/2.0.2/imageai-2.0.2-py3-none-any.whl 
RUN pip install -U Flask
RUN pip install Flask-Caching
RUN pip install pyramda

#install object_detection
RUN pip install --user contextlib2
RUN pip install --user pillow
RUN pip install --user lxml
RUN mkdir ~/tensorflow
RUN cd ~/tensorflow/ && git clone https://github.com/tensorflow/models.git
RUN git clone https://github.com/cocodataset/cocoapi.git
RUN cd cocoapi/PythonAPI && make
RUN cd cocoapi/PythonAPI && cp -r pycocotools ~/tensorflow/models/research/
RUN cd ~/tensorflow/models/research/ && protoc object_detection/protos/*.proto --python_out=.