docker run -d -p 8888:8888 -v "$PWD":/root/work -e DISPLAY=192.168.59.3:0 -v /tmp/.X11-unix:/tmp/.X11-unix:rw iphaeton/tensorflow-1.4.0:latest;
sleep 1;
docker logs `docker ps -qf "ancestor=iphaeton/tensorflow-1.4.0:latest"`;