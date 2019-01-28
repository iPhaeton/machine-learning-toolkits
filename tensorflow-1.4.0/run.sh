docker run -d -p 8888:8888 -v "$PWD":/root/work iphaeton/tensorflow-1.4.0:latest;
sleep 3;
docker logs `docker ps -qf "ancestor=iphaeton/tensorflow-1.4.0:latest"`;